describe 'Login' do
    before (:all) do
        visit 'http://localhost:90/#/login'
    end
    context 'login de usuario' do
        it 'com sucesso' do
            fill_in 'mat-input-0', with: 'testes' #Usuário
            fill_in 'mat-input-1', with: 'bgm123456' #Senha
            click_button 'Entrar'
            click_button 'Entrar'
            fill_in("ex: 97898704021218987040212189870402198704021218", options = {:placeholder => 'ex: 97898704021218987040212189870402198704021218', :with => '35190543648971000155550050006365241050820173'}) #NF
            fill_in("XX/XX/XXXX", options = {:placeholder => 'XX/XX/XXXX', :with => ' '}) #Data
            click_button 'Adicionar nota'
            click_button 'ENCOMENDAS'
            click_button 'Frete'
            #Remetente
            fill_in 'mat-input-2', with: '76712477824' #CNPJ/CPF
            fill_in 'mat-input-3', with: 'Vicente Daniel Elias Lopes' #Razão Social/Nome
            fill_in 'mat-input-62', with: 'vicentedanieleliaslope@prestec.com.br' #E-mail
            fill_in 'mat-input-5', with: '1128813548' #Telefone
            fill_in 'mat-input-6', with: '03063030' #CEP
            fill_in 'mat-input-8', with: '509' #Número
            fill_in 'mat-input-9', with: 'Casa 1' #Complemento
            #Destinatário
            fill_in 'mat-input-22', with: '82753769800' #CNPJ/CPF
            fill_in 'mat-input-23', with: 'Cláudio Thiago Luís Gonçalves' #Razão Social/Nome  
            fill_in 'mat-input-63', with: 'cclaudiothiagoluisgoncalves@comercialmendes.net' #E-mail
            fill_in 'mat-input-25', with: '1125723170' #Telefone
            fill_in 'mat-input-26', with: '05162020' #CEP
            fill_in 'mat-input-28', with: '612' #Número
            fill_in 'mat-input-29', with: 'Casa 1' #Complemento
            click_button 'CIF'
            click_button 'Mercadoria'
            click_button 'Selecione o produto'
            #Falta implementar a Selecao do produto
            #fill_in 'mat-input-74', with: '1' #Quantidade
            #fill_in 'mat-input-75', with: '1' #Peso
            #fill_in 'mat-input-76', with: '100' #Valor da nota
            #click_button 'mat-checkbox-23-input' #CT-e sem cubagem
        end
    end
end