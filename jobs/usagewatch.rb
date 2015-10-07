require 'usagewatch'

SCHEDULER.every '5m', :first_in => 0 do

  usw = Usagewatch
  send_event("usagewatch", {
    diskused: usw.uw_diskused,
    diskused_perc: usw.uw_diskused_perc,
    memused: usw.uw_memused,
    cpuused: usw.uw_cpuused,
    tcpused: usw.uw_tcpused
  })

end
