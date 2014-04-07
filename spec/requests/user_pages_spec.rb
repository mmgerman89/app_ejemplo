#encoding: utf-8
require 'spec_helper'

describe "Pagina Usuarios" do
  subject { page }
  
  describe "Página de Registros" do
    before { visit registro_path }
    
    it { should have_selector('h1', text: 'Registro') }
    it { should have_selector('title', text: full_title('Registro')) }
  end
  
end
