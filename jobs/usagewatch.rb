require 'usagewatch'

SCHEDULER.every '5m', :first_in => 0 do

  usw = Usagewatch
  send_event("usagewatch", {
    diskused: usw.uw_diskused.to_s + ' GB',
    diskused_perc: usw.uw_diskused_perc.to_s + ' %',
    memused: usw.uw_memused.to_s + ' %',
    cpuused: usw.uw_cpuused.to_s + ' %',
    tcpused: usw.uw_tcpused.to_s
  })

end
