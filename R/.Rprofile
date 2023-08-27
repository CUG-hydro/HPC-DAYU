# vim ~/.Rprofile
.libPaths(c("/opt/R/x86_64-pc-linux-gnu-library/4.0", "~/R/x86_64-pc-linux-gnu-library/4.0")[c(2, 1)])

vpn="http://172.16.10.253:1080"
Sys.setenv(http_proxy=vpn)
Sys.setenv(https_proxy=vpn)

## R Modules
prepend_path <- function(NAME, VALUE){
  vals = Sys.getenv(NAME)
  vals = paste0(VALUE, ":", vals)
  cmd = sprintf('Sys.setenv(%s=vals)', NAME)
  eval(parse(text = cmd))
}
prepend_app <- function(root, lib = "/lib") {
  prepend_path("PATH"           , paste0(root, "/bin"))
  prepend_path("INCLUDE"        , paste0(root, "/include"))
  prepend_path("LD_LIBRARY_PATH", paste0(root, lib))
  prepend_path("MANPATH"        , paste0(root, "/share/man"))
}

NETCDF = "/share/base/netcdf-c/4.7.4-gcc930"
Sys.setenv(NETCDF = NETCDF)
prepend_app(NETCDF)

gcc = "/share/base/gcc/9.3.0"
prepend_app(gcc, "/lib64")

# prepend_path("LD_LIBRARY_PATH", "/share/base/gcc/9.3.0/lib64:/opt/anaconda3/lib:/share/intel/2020u1/intelpython3/lib"
# prepend_path("PATH", "/share/base/netcdf-c/4.7.4-gcc930/bin:/share/base/gcc/9.3.0/bin")
