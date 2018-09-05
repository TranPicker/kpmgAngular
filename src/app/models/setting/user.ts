export class User {
  full_name: string;
  phone: string;
  email: string;
  password: string;
  permission: number[];

  constructor() {
    this.full_name = '';
    this.phone = '';
    this.email = '';
    this.password = '';
    this.permission = [];
  }

}

export class Zone {
}
