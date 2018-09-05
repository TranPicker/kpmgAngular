import {Component, OnInit} from '@angular/core';
import {RuleService} from '../../../../../../services/rules/rule.service';
import {Rule} from '../../../../../../models/rules/rule';
import swal from 'sweetalert';

declare var $: any;

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
    }, err => {
      console.log(err);
    });
  }

  addRules() {
    console.log('add Rules working');
    this.ruleAdd.additional_condition = '' + this.ruleAdd.additional_condition;
    this.ruleService.addRules(this.ruleAdd).subscribe(res => {
      this.ruleAdd = new Rule();
      this.getRules();
      $('.close').click();
      swal('Add Rules Success!', '', 'success');
    }, error1 => {
      console.log(error1);
      swal('Field must has content!', '', 'error');
    });

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
