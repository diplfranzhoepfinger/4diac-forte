set(CMAKE_TOOLCHAIN_FILE "$ENV{IDF_PATH}/tools/cmake/toolchain-esp32p4.cmake")

set(CMAKE_LINK_LIBRARY_USING_WHOLE_ARCHIVE "LINKER:--whole-archive"
                                           "<LINK_ITEM>"
                                           "LINKER:--no-whole-archive")
set(CMAKE_LINK_LIBRARY_USING_WHOLE_ARCHIVE_SUPPORTED TRUE)
set(CMAKE_LINK_LIBRARY_WHOLE_ARCHIVE_ATTRIBUTES LIBRARY_TYPE=STATIC DEDUPLICATION=YES OVERRIDE=DEFAULT)


set(CMAKE_C_FLAGS     "${CMAKE_C_FLAGS} -march=rv32imafc_zicsr_zifencei_zaamo_zalrsc_xesploop_xespv -mabi=ilp32f -ffunction-sections --specs=picolibc.specs -fdata-sections -fno-threadsafe-statics -fno-rtti -fno-exceptions")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -march=rv32imafc_zicsr_zifencei_zaamo_zalrsc_xesploop_xespv -mabi=ilp32f -ffunction-sections --specs=picolibc.specs -fdata-sections -fno-threadsafe-statics -fno-rtti -fno-exceptions")



message("CMAKE_C_FLAGS   used for this build: ${CMAKE_C_FLAGS}")
message("CMAKE_CXX_FLAGS used for this build: ${CMAKE_CXX_FLAGS}")




set(FORTE_FREERTOS_INCLUDE_DIR 
  "$ENV{IDF_PATH}/components/freertos/FreeRTOS-Kernel/include"
  "$ENV{IDF_PATH}/components/freertos/config/include"
  "$ENV{IDF_PATH}/components/freertos/config/include/freertos"
  "$ENV{IDF_PATH}/components/freertos/config/riscv/include"
  "$ENV{IDF_PATH}/components/riscv/include"
  "$ENV{IDF_PATH}/components/freertos/FreeRTOS-Kernel/portable/riscv/include/freertos"
  "$ENV{IDF_PATH}/components/esp_hw_support/include"
  "$ENV{IDF_PATH}/components/soc/include"
  "$ENV{IDF_PATH}/components/soc/esp32p4/include"
  "$ENV{IDF_PATH}/components/esp_common/include"
  "$ENV{IDF_PATH}/components/esp_system/include"
  "$ENV{IDF_PATH}/components/soc/esp32p4/register/hw_ver3"
  "$ENV{IDF_PATH}/components/esp_libc/platform_include"
  "$ENV{IDF_PATH}/components/heap/include"
  "$ENV{IDF_PATH}/components/esp_rom/include"
  "$ENV{IDF_PATH}/components/esp_timer/include"
  "$ENV{IDF_PATH}/components/lwip/port/freertos/include" 
  "$ENV{IDF_PATH}/components/lwip/port/esp32xx/include"
  "$ENV{IDF_PATH}/components/lwip/include"
  "$ENV{IDF_PATH}/components/lwip/port/include" 
  "$ENV{IDF_PATH}/components/lwip/port/esp32xx/include" 
  "$ENV{IDF_PATH}/components/lwip/lwip/src/include"
  "$ENV{IDF_PATH}/components/newlib/platform_include"
)


