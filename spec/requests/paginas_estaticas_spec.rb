#encoding: utf-8
require 'spec_helper'

describe "Paginas Estaticas: " do
  
  let(:base) {'Germán Martínez'}
  
  subject { page }
  
  describe "Pagina Inicio" do
    before { visit root_path }
    
    it { should have_selector('h1', text: 'Bienvenido!') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector('title', text: '| Inicio')}
  end
  
  describe "Pagina Ayuda" do
    before { visit ayuda_path }
    
    it { should have_selector('h1', text: 'Ayuda') }
    it { should have_selector('title', text: full_title('Ayuda')) }
  end
  
  describe "Pagina Acerca de" do
    before { visit acerca_path }
    
    it { should have_selector('h1', text: 'Acerca de...') }
    it { should have_selector('title', text: full_title('Acerca de')) }
  end
  
  describe "Pagina Contacto" do
    before { visit contacto_path }
    
    it { should have_selector('h1', text: 'Contacto') }
    it { should have_selector('title', text: full_title('Contacto')) }
  end
  
end
