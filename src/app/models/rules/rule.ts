export class Rule {
  public main_condition: string;
  public prerequisite: string;
  public additional_condition: string;
  public content: string;

  constructor() {
    this.main_condition = '';
    this.prerequisite = '';
    this.additional_condition = '';
    this.content = '';
  }
}
