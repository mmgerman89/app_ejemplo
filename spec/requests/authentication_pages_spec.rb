#encoding: utf-8
require 'spec_helper'

describe "Sesión" do
  subject { page }
  
  describe "inicio de sesión" do
    before { visit signin_path }
    
    it { should have_selector('h1', text: 'Iniciar sesión') }
    it { should have_selector('title', text: 'Iniciar sesión') }
    
    describe "con información inválida" do
      before { click_button 'Iniciar Sesión' }
      
      it { should have_selector('title', text: full_title('Iniciar sesión')) }
      it { should have_selector('div.alert.alert-error', text: 'inválida') }
      
      describe "despues de visitar otra página" do
        before { click_link "Inicio" }
        it { should_not have_selector('div.alert.alert-error') }
      end
    end
    
    describe "con información válida" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        fill_in "Email", with: user.email
        fill_in "Password", with: user.password
        click_button "Iniciar Sesión"
      end
      
      it { should have_selector('title', text: user.name) }
      it { should have_link('Perfil', href: user_path(user)) }
      it { should have_link('Cerrar Sesión', href: signout_path) }
      it { should_not have_link('Iniciar Sesión', href: signin_path) }
      
      describe "seguido por un cierre de sesión" do
        before { click_link "Cerrar Sesión" }
        it { should have_link('Iniciar Sesión') }
      end
    end
  end
end
