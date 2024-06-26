import { Factory } from '@prisma/client';

export interface StoreBodyInterface {
  timestamps: Date;
  sector: string;
  factory: Factory;
  firmware: number;
  rn_voltage: number;
  sn_voltage: number;
  tn_voltage: number;
  phaseneutral_voltage: number;
  phasetophase_r_voltage: number;
  phasetophase_s_voltage: number;
  phasetophase_t_voltage: number;
  average_phasetophase_voltage: number;
  r_phase_current: number;
  s_phase_current: number;
  t_phase_current: number;
  total_average_current: number;
  active_power_r: number;
  active_power_s: number;
  active_power_t: number;
  total_active_power: number;
  reactive_power_r: number;
  reactive_power_s: number;
  reactive_power_t: number;
  total_reactive_power: number;
  apparent_power_r: number;
  apparent_power_s: number;
  apparent_power_t: number;
  total_apparent_power: number;
  power_factor_r: number;
  power_factor_s: number;
  power_factor_t: number;
  total_power_factor: number;
  frequency: number;
  totalizer_kwh_plus_phase_r: number;
  totalizer_mwh_plus_phase_r: number;
  totalizer_kwh_plus_phase_s: number;
  totalizer_mwh_plus_phase_s: number;
  totalizer_kwh_plus_phase_t: number;
  totalizer_mwh_plus_phase_t: number;
  totalizer_kwh_plus_total: number;
  totalizer_mwh_plus_total: number;
  totalizer_kwh_minus_total: number;
  totalizer_mwh_minus_total: number;
  totalizer_kvarh_indq1_total: number;
  totalizer_mvarh_indq1_total: number;
  totalizer_kvarh_capq4_total: number;
  totalizer_mvarh_capq4_total: number;
  totalizer_kvarh_q2_total: number;
  totalizer_mvarh_q2_total: number;
  totalizer_kvarh_q3_total: number;
  totalizer_mvarh_q3_total: number;
  angle_between_voltage_r_current_r: number;
  angle_between_voltage_s_current_s: number;
  angle_between_voltage_t_current_t: number;
  angle_between_voltage_r_voltage_r: number;
  angle_between_voltage_r_voltage_s: number;
  angle_between_voltage_r_voltage_t: number;
  thd_voltage_r: number;
  thd_voltage_s: number;
  thd_voltage_t: number;
  thd_current_r: number;
  thd_current_s: number;
  thd_current_t: number;
}
