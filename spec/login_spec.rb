describe "Login" do
    it "login de um usuario com sucesso" do
        visit 'http://localhost:90/#/login'
        fill_in 'mat-input-0', with: 'testes'
        fill_in 'mat-input-1', with: 'bgm123456'
        click_button 'Entrar'
        @messageok = find('.saludos')
        sleep 3
    end
end

describe "Login sem sucesso" do
    it 'login' do
        visit 'http://localhost:90/#/login'
        fill_in 'mat-input-0', with: 'testes'
        fill_in 'mat-input-1', with: 'bgm126'
        click_button 'Entrar'
        @messagenok = find('.toast-message')
        expect(page).to have_no_content('Usuário ou senha Inválidos')
        sleep 3
        puts @messagenok
    end
end