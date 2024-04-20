import { Module } from '@nestjs/common';

import { CoffeeReportController } from './coffee-report.controller';
import { CoffeeReportService } from './coffee-report.service';

@Module({
  imports: [],
  controllers: [CoffeeReportController],
  providers: [CoffeeReportService],
})
export class CoffeReportModule {}
