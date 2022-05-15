# Turn off compress for debug
# !define DEBUG 

!ifdef DEBUG
    SetCompress off
!else
    SetCompress force
    SetCompressor /SOLID /FINAL lzma
    SetCompressorDictSize 32
!endif
