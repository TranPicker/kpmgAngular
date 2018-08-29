export class Feed {
  public title: string;
  public description: string;
  public file: string;
  public date_start: string;
  public date_end: string;
  public favorite: string;

  constructor() {
    this.title = '';
    this.description = '';
    this.file = '';
    this.date_start = '';
    this.date_end = '';
    this.favorite = '';
  }
}
