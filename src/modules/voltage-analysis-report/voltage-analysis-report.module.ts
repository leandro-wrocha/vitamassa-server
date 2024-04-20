import { Module } from '@nestjs/common';

import { VoltageAnalysisReportController } from './voltage-analysis-report.controller';
import { VoltageAnalysisReportService } from './voltage-analysis-report.service';

@Module({
  imports: [],
  controllers: [VoltageAnalysisReportController],
  providers: [VoltageAnalysisReportService],
})
export class VoltageAnalysisReportModule {}
