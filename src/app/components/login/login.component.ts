import {Component, OnInit} from '@angular/core';
import {ActivatedRoute, Router} from '@angular/router';
import {HttpErrorResponse} from '@angular/common/http';
import {LoginService} from '../../services/login/login.service';
import {Login} from '../../models/login/login';
import swal from 'sweetalert';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  user: Login = new Login();
  returnUrl: string;

  constructor(
    private loginService: LoginService,
    private router: Router,
    private route: ActivatedRoute) {
  }

  ngOnInit() {
    this.logOut();
    this.returnUrl = this.route.snapshot.queryParamMap['params'].returnUrl || '/';
  }

  loginUser() {
    this.loginService.checkLogin(this.user).subscribe(token => {
      localStorage.setItem('currentUser', JSON.stringify(token));
      this.router.navigate([this.returnUrl]);
      swal('Login Success!', 'Welcome to home page!', 'success');
    }, (error: HttpErrorResponse) => {
      if (error.error instanceof Error) {
        console.log('An error occurred: ' + error.error.message);
      } else {
        console.log(`Backend return code ${error.message},body was: ${error.error}`);
      }
      swal('Login Failure!', 'Your email or password Wrong', 'error');
    });
  }

  logOut() {
    localStorage.removeItem('currentUser');
  }
}
