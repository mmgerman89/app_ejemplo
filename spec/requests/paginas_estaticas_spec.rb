require 'spec_helper'

describe "Paginas Estaticas: " do
  
  describe "Pagina Inicio" do
    it "deberia decir: 'Bienvenido!'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit "/paginas_estaticas/inicio"#paginas_estaticas_index_path
      #response.status.should be(200)
      page.should have_content('Bienvenido!')
    end
  end
  
  describe "Pagina Ayuda" do
    it "deberia decir 'Ayuda'" do
      visit "/paginas_estaticas/ayuda"
      page.should have_content('Ayuda')
    end
  end
  
  describe "Pagina Acerca de" do
    it "deberia decir 'Acerca de...'" do
      visit '/paginas_estaticas/acerca'
      page.should have_content('Acerca de...')
    end
  end
  
end
