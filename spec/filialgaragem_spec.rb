require_relative 'helper'
RSpec.configure do |conf|
    conf.include Helper
end
describe 'Login' do
    before (:each) do
        visit 'http://localhost:90/#/login'
    end
    context 'login de usuario' do
        it 'com sucesso' do
            fill_in 'mat-input-0', with: 'testes' #Usuário
            fill_in 'mat-input-1', with: 'bgm123456' #Senha
            click_button 'Entrar' #Btn Entrar da tela de Login
            sleep 2
            click_button 'Entrar' #Btn Entrar da tela Selecione Filial/Garagem
            fill_in("ex: 97898704021218987040212189870402198704021218", options = {:placeholder => 'ex: 97898704021218987040212189870402198704021218', :with => '35190543648971000155550050006365241050820173'}) #NF
            fill_in("XX/XX/XXXX", options = {:placeholder => 'XX/XX/XXXX', :with => ' '}) #Data
            click_button 'Adicionar nota'
            click_button 'ENCOMENDAS'
            click_button 'Frete'
            #Remetente
            #fill_in 'mat-input-2', with: '76712477824' #CNPJ/CPF
            fill_in 'mat-input-2', with: cpf #CNPJ/CPF
            fill_in 'mat-input-3', with: nome #Razão Social/Nome
            fill_in 'mat-input-62', with: email #E-mail
            fill_in 'mat-input-5', with: telefone #Telefone
            fill_in 'mat-input-6', with: cep #CEP
            fill_in 'mat-input-8', with: numero #Número
            fill_in 'mat-input-9', with: complemento #Complemento
            #Destinatário
            fill_in 'mat-input-22', with: cpf #CNPJ/CPF
            fill_in 'mat-input-23', with: nome #Razão Social/Nome  
            fill_in 'mat-input-63', with: email #E-mail
            fill_in 'mat-input-25', with: telefone #Telefone
            fill_in 'mat-input-26', with: cep #CEP
            fill_in 'mat-input-28', with: numero #Número
            fill_in 'mat-input-29', with: complemento #Complemento
            click_button 'CIF'
            sleep 10
            click_button 'Mercadoria'
            click_button 'Selecione o produto'
            sleep 120
            #click_on(class: '.mat-menu-item')
            #find('#button.mat-menu-item').click # Jquery $('button.mat-menu-item');
            #Falta implementar a Selecao do produto
            #fill_in 'mat-input-74', with: '1' #Quantidade
            #fill_in 'mat-input-75', with: '1' #Peso
            #fill_in 'mat-input-76', with: '100' #Valor da nota
            #click_button 'mat-checkbox-23-input' #CT-e sem cubagem

            #<button _ngcontent-c50="" class="mat-menu-item ng-star-inserted" mat-menu-item="" role="menuitem" tabindex="0" aria-disabled="false"> 11 - teste <div class="mat-menu-ripple mat-ripple" matripple=""></div></button>
            #<button _ngcontent-c50="" class="mat-menu-item ng-star-inserted" mat-menu-item="" role="menuitem" tabindex="0" aria-disabled="false"> 4 - ENCOMENDAS (TE2) <div class="mat-menu-ripple mat-ripple" matripple=""></div></button>
            #<button _ngcontent-c50="" class="mat-menu-item ng-star-inserted" mat-menu-item="" role="menuitem" tabindex="0" aria-disabled="false"> 7 - DIVERSOS <div class="mat-menu-ripple mat-ripple" matripple=""></div></button>
            #
            #
            #
        end
    end
end