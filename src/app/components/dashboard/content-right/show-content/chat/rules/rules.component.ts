import {Component, OnInit} from '@angular/core';
import {RuleService} from '../../../../../../services/rules/rule.service';

@Component({
  selector: 'app-rules',
  templateUrl: './rules.component.html',
  styleUrls: ['./rules.component.css']
})
export class RulesComponent implements OnInit {
  private rules: any = '';

  constructor(private ruleService: RuleService) {
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

}
