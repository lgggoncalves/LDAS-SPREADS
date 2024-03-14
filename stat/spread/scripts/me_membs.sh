#!/bin/bash
#
ddir=/work/csp/lg07622/land/work/clm5_23/lnd_secn/run
dout=../datain

for yy in {2008..2008}
do
  for mm in {01..12}
  do
    flag=1
    if [ $flag -gt 0 ]
    then
    if [ "$yy" = "2000" -a "$mm" = "01" ]
    then
    cdo -P 16 -O ensmean ${ddir}/lnd_secn.clm2_00*.h0.${yy}-${mm}-01-00000.nc ${dout}/mean_h0.${yy}-${mm}.nc
    cdo -P 16 -O ensstd ${ddir}/lnd_secn.clm2_00*.h0.${yy}-${mm}-01-00000.nc ${dout}/std_h0.${yy}-${mm}.nc
    else
    cdo -P 16 -O ensmean ${ddir}/lnd_secn.clm2_00*.h0.${yy}-${mm}-*-00000.nc ${dout}/mean_h0.${yy}-${mm}.nc
    cdo -P 16 -O ensstd ${ddir}/lnd_secn.clm2_00*.h0.${yy}-${mm}-*-00000.nc ${dout}/std_h0.${yy}-${mm}.nc
    fi
    fi
    cdo -P 8 -O div std_h0.${yy}-${mm}.nc mean_h0.${yy}-${mm}.nc ${dout}/variat_h0.${yy}-${mm}.nc

  done
done


