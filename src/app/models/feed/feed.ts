export class Feed {
  public title: string;
  public description: string;
  public file: any;
  public date_start: any;
  public date_end: any;
  public favorite: string;
  public time_repeat: string;

  constructor() {
    this.title = '';
    this.description = '';
    this.file = '';
    this.favorite = '1,2';
    this.time_repeat = '';
  }
}
