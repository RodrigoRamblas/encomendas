describe 'Login' do
    before (:all) do
        visit 'http://localhost:90/#/login'
    end
    context 'login de usuario' do
        it 'com sucesso' do
            fill_in 'mat-input-0', with: 'testes'
            fill_in 'mat-input-1', with: 'bgm123456'
            click_button 'Entrar'
            @messageok = find('.saludos')
            sleep 3    
            click_button 'Entrar'
            sleep 5
            fill_in("ex: 97898704021218987040212189870402198704021218", options = {:placeholder => 'ex: 97898704021218987040212189870402198704021218', :with => '35190543648971000155550050006365241050820173'})
            fill_in("XX/XX/XXXX", options = {:placeholder => 'XX/XX/XXXX', :with => '03/12/2019'})
            sleep 4
            click_button 'Adicionar nota'
        end
    end
end