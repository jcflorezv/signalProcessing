function [ms_qcodes]=encodeQuant(ms_q, max_val, WW)
  L = 2^WW;
  dq = (2*max_val)/L;      % quant .delta
  codes = [-max_val:dq:max_val] + dq/2;
  ms_qcodes = [];
  for q = ms_q
    i = find(codes == q) - 1;  % matlab array indexes begin with 1, so we substract 1
    ms_qcodes = [ms_qcodes i];
  endfor
endfunction
