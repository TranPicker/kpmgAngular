export class Login {
  public emailAdress: string;
  public passWord: string;

  constructor(email: string = '', pass: string = '') {
    this.emailAdress = email;
    this.passWord = pass;
  }
}
