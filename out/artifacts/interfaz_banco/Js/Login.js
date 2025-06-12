function toggleForm(formType) {
    const loginForm = document.getElementById('loginForm');
    const registerForm = document.getElementById('registerForm');
    const btnLogin = document.getElementById('btnLogin');
    const btnRegister = document.getElementById('btnRegister');

    if (formType === 'login') {
        loginForm.style.display = 'block';
        registerForm.style.display = 'none';
        btnLogin.classList.add('active');
        btnRegister.classList.remove('active');
    } else {
        loginForm.style.display = 'none';
        registerForm.style.display = 'block';
        btnLogin.classList.remove('active');
        btnRegister.classList.add('active');
    }
}