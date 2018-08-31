export class PersonInfor {
  id: number;
  person_id: number;
  first_name: string;
  middle_name: string;
  last_name: string;
  department: string;
  join_date: string;
  office_location: string;
  name: string;
  avatar: any;
  birthday: string;
  gender: number;
  title: string;
  contract_no: string;
  email: string;
  marital: number;
  count_to_club: number;
  status: number;
  import_from_zip: string;
  description: string;
  created_at: string;
  updated_at: string;
  topzone: TopZone;
  detailfavorite: DetailFavorite[];
  image: Image[];

  constructor() {
    this.id = null;
    this.person_id = null;
    this.first_name = '';
    this.middle_name = '';
    this.last_name = '';
    this.department = '';
    this.join_date = '';
    this.office_location = '';
    this.name = '';
    this.avatar = '';
    this.birthday = '';
    this.gender = null;
    this.title = '';
    this.contract_no = '';
    this.email = '';
    this.marital = null;
    this.count_to_club = null;
    this.status = null;
    this.import_from_zip = '';
    this.description = '';
    this.created_at = '';
    this.updated_at = '';
  }
}

class TopZone {
  Bar: number;
  KopiTiam: number;
  Cafe: number;

  constructor() {
    this.Bar = null;
    this.KopiTiam = null;
    this.Cafe = null;
  }
}

class DetailFavorite {
  id: number;
  favorite_id: number;
  customer_id: number;
  percent: number;
  created_at: string;
  updated_at: string;
  favorite: Favorite;

  constructor() {
    this.id = null;
    this.favorite_id = null;
    this.customer_id = null;
    this.percent = null;
    this.created_at = '';
    this.updated_at = '';
  }
}

class Favorite {
  id: number;
  name: string;
  created_at: string;
  updated_at: string;
  zone_favorite: any;

  constructor() {
    this.id = null;
    this.name = '';
    this.created_at = '';
    this.zone_favorite = '';
  }
}

class Image {
  id: number;
  customer_id: number;
  file: any;
  status: number;
  created_at: string;
  updated_at: string;

  constructor() {
    this.id = null;
    this.customer_id = null;
    this.file = '';
    this.status = null;
    this.created_at = '';
    this.updated_at = '';
  }
}
