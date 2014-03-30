require 'spec_helper'

describe "Paginas Estaticas: " do
  
  describe "Pagina Inicio" do
    
    it "deberia tener <h1> con 'Bienvenido!'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit "/paginas_estaticas/inicio"#paginas_estaticas_index_path
      #response.status.should be(200)
      page.should have_selector('h1', :text => 'Bienvenido!')
    end
    
    it "deberia tener el titulo 'Inicio'" do
      visit '/paginas_estaticas/inicio'
      page.should have_selector('title', :text => 'German Martinez | Inicio')
    end
    
  end
  
  describe "Pagina Ayuda" do
    
    it "deberia tener <h1> con 'Ayuda'" do
      visit "/paginas_estaticas/ayuda"
      page.should have_selector('h1', :text => 'Ayuda')
    end
    
    it "deberia tener el titulo 'Ayuda'" do
      visit '/paginas_estaticas/ayuda'
      page.should have_selector('title', :text => 'German Martinez | Ayuda')
    end
    
  end
  
  describe "Pagina Acerca de" do
    
    it "deberia tener <h1> con 'Acerca de...'" do
      visit '/paginas_estaticas/acerca'
      page.should have_selector('h1', :text => 'Acerca de...')
    end
    
    it "deberia tener el titulo 'Acerca de'" do
      visit '/paginas_estaticas/acerca'
      page.should have_selector('title', :text => 'German Martinez | Acerca de')
    end
    
  end
  
end
