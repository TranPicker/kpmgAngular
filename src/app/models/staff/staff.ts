export class Staff {
  public id: string;
  public person_id: string;
  public first_name: string;
  public middle_name: string;
  public last_name: string;
  public department: string;
  public join_date: string;
  public office_location: string;
  public name: string;
  public avatar: string;
  public birthday: string;
  public gender: string;
  public marital: string;
  public count_to_club: string;
  public status: string;
  public import_from_zip: string;
  public description: string;
  public created_at: string;
  public updated_at: string;
  public tag: string[];

  constructor() {
    this.id = '';
    this.person_id = '';
    this.first_name = '';
    this.middle_name = '';
    this.last_name = '';
    this.department = '';
    this.join_date = '';
    this.office_location = '';
    this.name = '';
    this.avatar = '';
    this.birthday = '';
    this.gender = '';
    this.marital = '';
    this.count_to_club = '';
    this.status = '';
    this.import_from_zip = '';
    this.description = '';
    this.created_at = '';
    this.updated_at = '';
    this.tag = [];
  }
}

