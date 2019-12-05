require_relative 'helper'
RSpec.configure do |conf|
    conf.include Helper
end
describe 'Login' do
    before (:each) do
        visit 'http://localhost:90/#/login'
    end
    context 'Remetente' do
        it 'Sem tabela de frete' do
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
            fill_in 'mat-input-2', with: remetentesemtabeladefrete #CNPJ/CPF
            #Destinatário
            fill_in 'mat-input-22', with: remetentecomtabeladefrete #CNPJ/CPF
            sleep 2
            click_button 'CIF'
            sleep 15
            click_button 'Mercadoria'
            click_button 'Selecione o produto'
            sleep 5
            find('button', text: '(TE1)', exact_text: false).click
            fill_in 'mat-input-74', with: '1' #Quantidade
            fill_in 'mat-input-75', with: '1' #Peso
            fill_in 'mat-input-76', with: '100' #Valor da nota
            sleep 10
            #ERROcheck 'mat-checkbox-23-input'  #CT-e sem cubagem
            click_button 'Calcular'
            sleep 8
            #Validar se a msg está correta
            expect(find('.c-dialog-content').text).to eql 'Não foi localizada tabela de frete para as condições especificadas.'
        end
        xit 'Com tabela de frete' do
            fill_in 'mat-input-0', with: 'testes' #Usuário
            fill_in 'mat-input-1', with: 'bgm123456' #Senha
            click_button 'Entrar' #Btn Entrar da tela de Login
            sleep 2
            #Falta implementar a pesquisa de garagem
            #click_button('expand_more')
            #find('button', text: '30/30', exact_text: false).click
            click_button 'Entrar' #Btn Entrar da tela Selecione Filial/Garagem
            fill_in("ex: 97898704021218987040212189870402198704021218", options = {:placeholder => 'ex: 97898704021218987040212189870402198704021218', :with => '35190543648971000155550050006365241050820173'}) #NF
            fill_in("XX/XX/XXXX", options = {:placeholder => 'XX/XX/XXXX', :with => ' '}) #Data
            click_button 'Adicionar nota'
            click_button 'ENCOMENDAS'
            click_button 'Frete'
            #Remetente
            #fill_in 'mat-input-2', with: '76712477824' #CNPJ/CPF
            fill_in 'mat-input-2', with: remetentecomtabeladefrete #CNPJ/CPF
            #Destinatário
            fill_in 'mat-input-22', with: remetentesemtabeladefrete #CNPJ/CPF
            click_button 'CIF'
            sleep 15
            click_button 'Mercadoria'
            click_button 'Selecione o produto'
            sleep 2
            find('button', text: '(TE1)', exact_text: false).click
            fill_in 'mat-input-74', with: '1' #Quantidade
            fill_in 'mat-input-75', with: '1' #Peso
            fill_in 'mat-input-76', with: '100' #Valor da nota
            sleep 10
            #ERROcheck 'mat-checkbox-23-input'  #CT-e sem cubagem
            click_button 'Calcular'
            sleep 15
            click_button 'Enviar SEFAZ'
        end    
    end
end