-- CreateEnum
CREATE TYPE "Factory" AS ENUM ('F01', 'F02', 'FCOFFEE');

-- CreateTable
CREATE TABLE "voltage_analysis_reports" (
    "id" BIGSERIAL NOT NULL,
    "timestamps" TIMESTAMP(3) NOT NULL,
    "sector" TEXT NOT NULL,
    "factory" "Factory" NOT NULL,
    "firmware" DOUBLE PRECISION NOT NULL,
    "rn_voltage" DOUBLE PRECISION NOT NULL,
    "sn_voltage" DOUBLE PRECISION NOT NULL,
    "tn_voltage" DOUBLE PRECISION NOT NULL,
    "phaseneutral_voltage" DOUBLE PRECISION NOT NULL,
    "phasetophase_r_voltage" DOUBLE PRECISION NOT NULL,
    "phasetophase_s_voltage" DOUBLE PRECISION NOT NULL,
    "phasetophase_t_voltage" DOUBLE PRECISION NOT NULL,
    "average_phasetophase_voltage" DOUBLE PRECISION NOT NULL,
    "r_phase_current" DOUBLE PRECISION NOT NULL,
    "s_phase_current" DOUBLE PRECISION NOT NULL,
    "t_phase_current" DOUBLE PRECISION NOT NULL,
    "total_average_current" DOUBLE PRECISION NOT NULL,
    "active_power_r" DOUBLE PRECISION NOT NULL,
    "active_power_s" DOUBLE PRECISION NOT NULL,
    "active_power_t" DOUBLE PRECISION NOT NULL,
    "total_active_power" DOUBLE PRECISION NOT NULL,
    "reactive_power_r" DOUBLE PRECISION NOT NULL,
    "reactive_power_s" DOUBLE PRECISION NOT NULL,
    "reactive_power_t" DOUBLE PRECISION NOT NULL,
    "total_reactive_power" DOUBLE PRECISION NOT NULL,
    "apparent_power_r" DOUBLE PRECISION NOT NULL,
    "apparent_power_s" DOUBLE PRECISION NOT NULL,
    "apparent_power_t" DOUBLE PRECISION NOT NULL,
    "total_apparent_power" DOUBLE PRECISION NOT NULL,
    "power_factor_r" DOUBLE PRECISION NOT NULL,
    "power_factor_s" DOUBLE PRECISION NOT NULL,
    "power_factor_t" DOUBLE PRECISION NOT NULL,
    "total_power_factor" DOUBLE PRECISION NOT NULL,
    "frequency" DOUBLE PRECISION NOT NULL,
    "totalizer_kwh_plus_phase_r" DOUBLE PRECISION NOT NULL,
    "totalizer_mwh_plus_phase_r" DOUBLE PRECISION NOT NULL,
    "totalizer_kwh_plus_phase_s" DOUBLE PRECISION NOT NULL,
    "totalizer_mwh_plus_phase_s" DOUBLE PRECISION NOT NULL,
    "totalizer_kwh_plus_phase_t" DOUBLE PRECISION NOT NULL,
    "totalizer_mwh_plus_phase_t" DOUBLE PRECISION NOT NULL,
    "totalizer_kwh_plus_total" DOUBLE PRECISION NOT NULL,
    "totalizer_mwh_plus_total" DOUBLE PRECISION NOT NULL,
    "totalizer_kwh_minus_total" DOUBLE PRECISION NOT NULL,
    "totalizer_mwh_minus_total" DOUBLE PRECISION NOT NULL,
    "totalizer_kvarh_indq1_total" DOUBLE PRECISION NOT NULL,
    "totalizer_mvarh_indq1_total" DOUBLE PRECISION NOT NULL,
    "totalizer_kvarh_capq4_total" DOUBLE PRECISION NOT NULL,
    "totalizer_mvarh_capq4_total" DOUBLE PRECISION NOT NULL,
    "totalizer_kvarh_q2_total" DOUBLE PRECISION NOT NULL,
    "totalizer_mvarh_q2_total" DOUBLE PRECISION NOT NULL,
    "totalizer_kvarh_q3_total" DOUBLE PRECISION NOT NULL,
    "totalizer_mvarh_q3_total" DOUBLE PRECISION NOT NULL,
    "angle_between_voltage_r_current_r" DOUBLE PRECISION NOT NULL,
    "angle_between_voltage_s_current_s" DOUBLE PRECISION NOT NULL,
    "angle_between_voltage_t_current_t" DOUBLE PRECISION NOT NULL,
    "angle_between_voltage_r_voltage_r" DOUBLE PRECISION NOT NULL,
    "angle_between_voltage_r_voltage_s" DOUBLE PRECISION NOT NULL,
    "angle_between_voltage_r_voltage_t" DOUBLE PRECISION NOT NULL,
    "thd_voltage_r" DOUBLE PRECISION NOT NULL,
    "thd_voltage_s" DOUBLE PRECISION NOT NULL,
    "thd_voltage_t" DOUBLE PRECISION NOT NULL,
    "thd_current_r" DOUBLE PRECISION NOT NULL,
    "thd_current_s" DOUBLE PRECISION NOT NULL,
    "thd_current_t" DOUBLE PRECISION NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "voltage_analysis_reports_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "coffee_reports" (
    "id" BIGSERIAL NOT NULL,
    "sector" TEXT NOT NULL,
    "factory" "Factory" NOT NULL,
    "product" INTEGER NOT NULL,
    "batch" INTEGER NOT NULL,
    "raw_weight" DOUBLE PRECISION NOT NULL,
    "roasted_weight" DOUBLE PRECISION NOT NULL,
    "temperature" DOUBLE PRECISION NOT NULL,
    "water" DOUBLE PRECISION NOT NULL,
    "breakage" DOUBLE PRECISION NOT NULL,
    "furnace_consumption" DOUBLE PRECISION NOT NULL,
    "post_burn_consumption" DOUBLE PRECISION NOT NULL,
    "total_consumption" DOUBLE PRECISION NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "coffee_reports_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE INDEX "idx_voltage_analysis_reports_sector" ON "voltage_analysis_reports"("sector");

-- CreateIndex
CREATE INDEX "idx_voltage_analysis_reports_factory" ON "voltage_analysis_reports"("factory");

-- CreateIndex
CREATE INDEX "idx_voltage_analysis_reports_firmware" ON "voltage_analysis_reports"("firmware");

-- CreateIndex
CREATE INDEX "idx_coffee_reports_sector" ON "coffee_reports"("sector");

-- CreateIndex
CREATE INDEX "idx_coffee_reports_factory" ON "coffee_reports"("factory");
