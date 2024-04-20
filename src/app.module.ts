import { Module } from '@nestjs/common';

import { CoffeReportModule } from './modules/coffee-report/coffee-report.module';
import { VoltageAnalysisReportModule } from './modules/voltage-analysis-report/voltage-analysis-report.module';

@Module({
  imports: [CoffeReportModule, VoltageAnalysisReportModule],
  controllers: [],
  providers: [],
})
export class AppModule {}
