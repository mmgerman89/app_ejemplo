#encoding: utf-8
require 'spec_helper'

describe "Paginas Estaticas: " do
  
  let(:base) {'Germán Martínez'}
  
  describe "Pagina Inicio" do
    
    it "deberia tener <h1> con 'Bienvenido!'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit "/paginas_estaticas/inicio"#paginas_estaticas_index_path
      #response.status.should be(200)
      page.should have_selector('h1', :text => 'Bienvenido!')
    end
    
    it "deberia tener el titulo 'Inicio'" do
      visit '/paginas_estaticas/inicio'
      page.should have_selector('title', :text => "#{base} | Inicio")
    end
    
  end
  
  describe "Pagina Ayuda" do
    
    it "deberia tener <h1> con 'Ayuda'" do
      visit "/paginas_estaticas/ayuda"
      page.should have_selector('h1', :text => 'Ayuda')
    end
    
    it "deberia tener el titulo 'Ayuda'" do
      visit '/paginas_estaticas/ayuda'
      page.should have_selector('title', :text => "#{base} | Ayuda")
    end
    
  end
  
  describe "Pagina Acerca de" do
    
    it "deberia tener <h1> con 'Acerca de...'" do
      visit '/paginas_estaticas/acerca'
      page.should have_selector('h1', :text => 'Acerca de...')
    end
    
    it "deberia tener el titulo 'Acerca de'" do
      visit '/paginas_estaticas/acerca'
      page.should have_selector('title', :text => "#{base} | Acerca de")
    end
    
  end
  
  describe "Pagina Contacto" do
    
    it "deberia tener <h1> con 'Contacto'" do
      visit '/paginas_estaticas/contacto'
      page.should have_selector('h1', :text => 'Contacto')
    end
    
    it "deveria tener el titulo 'Contacto'" do
      visit '/paginas_estaticas/contacto'
      page.should have_selector('title', :text => "#{base} | Contacto")
    end
    
  end
  
end
