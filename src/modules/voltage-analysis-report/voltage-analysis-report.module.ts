import { Module } from '@nestjs/common';

import { VoltageAnalysisReportController } from './voltage-analysis-report.controller';
import { PrismaService } from 'src/prisma.service';
import { UseCaseStore } from './useCases/use-cases-store.service';

@Module({
  imports: [],
  controllers: [VoltageAnalysisReportController],
  providers: [PrismaService, UseCaseStore],
})
export class VoltageAnalysisReportModule {}
