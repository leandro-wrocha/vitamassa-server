import {
  Body,
  Controller,
  HttpCode,
  HttpException,
  HttpStatus,
  Post,
} from '@nestjs/common';
import { StoreBodyInterface } from './interfaces/store-body.interface';
import { UseCaseStore } from './useCases/use-cases-store.service';

@Controller('voltage-analysis-report')
export class VoltageAnalysisReportController {
  constructor(private readonly useCaseStore: UseCaseStore) {}

  @Post()
  @HttpCode(201)
  public async store(@Body() data: StoreBodyInterface) {
    try {
      await this.useCaseStore.execute(data);
    } catch (error) {
      throw new HttpException(
        'Erro ao registrar relatório de analisador de consumo.',
        HttpStatus.INTERNAL_SERVER_ERROR,
      );
    }
  }
}
