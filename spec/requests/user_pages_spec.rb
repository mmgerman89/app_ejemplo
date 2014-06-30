#encoding: utf-8
require 'spec_helper'

describe "Pagina Usuarios" do
  subject { page }
  
  describe "Página de Registros" do
    before { visit registro_path }
    
    it { should have_selector('h1', text: 'Registro') }
    it { should have_selector('title', text: full_title('Registro')) }
  end
  
  describe "Página de Perfil" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }
    
    it { should have_selector( 'h1', text: user.name) }
    it { should have_selector( 'title', text: full_title(user.name)) }
  end
  
  describe "registro" do
    before { visit registro_path }
    
    
    let(:submit) { "Crear mi cuenta" }
    
    describe "con información inválida" do
      it "no debe crear un usuario" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end
    
    describe "con información válida" do
      
      let(:user) { FactoryGirl.create(:user) }
      
      it "debe crear un usuario" do
        expect { visit user_path(user) }.to change(User, :count).by(1)
      end
      
    end
  end
  
end
