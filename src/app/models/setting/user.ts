export class User {
  id: string;
  full_name: string;
  phone: string;
  email: string;
  password: string;
  permission: number[];

  constructor() {
    this.id = null;
    this.full_name = '';
    this.phone = '';
    this.email = '';
    this.password = '';
    this.permission = [];
  }

}

export class Zone {
}
