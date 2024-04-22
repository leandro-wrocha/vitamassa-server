import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma.service';
import { UseCaseStoreInterface } from '../interfaces/use-case-store.interface';

@Injectable()
export class UseCaseStore {
  constructor(private readonly prisma: PrismaService) {}

  public async execute(data: UseCaseStoreInterface) {
    data.timestamps = new Date(data.timestamps);

    await this.prisma.voltageAnalysisReport.create({ data });
  }
}
