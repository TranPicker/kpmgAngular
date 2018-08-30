import { TestBed, inject } from '@angular/core/testing';

import { CurrentReportService } from './current-report.service';

describe('CurrentReportService', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [CurrentReportService]
    });
  });

  it('should be created', inject([CurrentReportService], (service: CurrentReportService) => {
    expect(service).toBeTruthy();
  }));
});
