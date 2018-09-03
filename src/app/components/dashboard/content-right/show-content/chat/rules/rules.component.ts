import {Component, OnInit} from '@angular/core';
import {RuleService} from '../../../../../../services/rules/rule.service';
import {Rule} from '../../../../../../models/rules/rule';

@Component({
  selector: 'app-rules',
  templateUrl: './rules.component.html',
  styleUrls: ['./rules.component.css']
})
export class RulesComponent implements OnInit {
  public rules: any = '';
  public condition: any = '';
  public operatorr: any = '';
  public ruleAdd: Rule = new Rule();

  constructor(public ruleService: RuleService) {
  }

  ngOnInit() {
    this.getRules();
  }

  getRules() {
    this.ruleService.getRuleChat().subscribe(res => {
      this.rules = res.data;
      console.log(this.rules);
    }, err => {
      console.log(err);
    });
  }

  addRules() {
    console.log('add rule working');
  }

  getConditions() {
    this.getOperator();
    this.ruleService.getCondition().subscribe(res => {
      this.condition = res.data;
    }, err => {
      console.log(err);
    });
  }

  getOperator() {
    this.ruleService.getOperator().subscribe(res => {
      this.operatorr = res.data;
    }, error => {
      console.log(error);
    });
  }

}
