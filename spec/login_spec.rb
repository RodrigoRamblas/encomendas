describe 'Login' do
    it 'login' do
        visit 'http://localhost:90/#/login'
        fill_in 'mat-input-0', with: 'testes'
        fill_in 'mat-input-1', with: 'rbg123456'
        click_button 'Entrar'
    end
end