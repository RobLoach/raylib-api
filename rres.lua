return {
  defines = {
    {
      name = "RRES_H",
      type = "GUARD",
      value = "",
      description = ""
    },
    {
      name = "RRESAPI",
      type = "UNKNOWN",
      value = "__declspec(dllexport)",
      description = "We are building the library as a Win32 shared library (.dll)"
    },
    {
      name = "RRES_MALLOC(sz)",
      type = "MACRO",
      value = "malloc(sz)",
      description = ""
    },
    {
      name = "RRES_CALLOC(ptr,sz)",
      type = "MACRO",
      value = "calloc(ptr,sz)",
      description = ""
    },
    {
      name = "RRES_REALLOC(ptr,sz)",
      type = "MACRO",
      value = "realloc(ptr,sz)",
      description = ""
    },
    {
      name = "RRES_FREE(ptr)",
      type = "MACRO",
      value = "free(ptr)",
      description = ""
    },
    {
      name = "RRES_SUPPORT_LOG_INFO",
      type = "GUARD",
      value = "",
      description = ""
    },
    {
      name = "RRES_LOG(...)",
      type = "MACRO",
      value = "printf(__VA_ARGS__)",
      description = ""
    },
    {
      name = "RRES_MAX_FILENAME_SIZE",
      type = "INT",
      value = 1024,
      description = ""
    }
  },
  structs = {
    {
      name = "rresFileHeader",
      description = "rres file header (16 bytes)",
      fields = {
        {
          type = "unsigned char[4]",
          name = "id",
          description = "File identifier: rres"
        },
        {
          type = "unsigned short",
          name = "version",
          description = "File version: 100 for version 1.0"
        },
        {
          type = "unsigned short",
          name = "chunkCount",
          description = "Number of resource chunks in the file (MAX: 65535)"
        },
        {
          type = "unsigned int",
          name = "cdOffset",
          description = "Central Directory offset in file (0 if not available)"
        },
        {
          type = "unsigned int",
          name = "reserved",
          description = "<reserved>"
        }
      }
    },
    {
      name = "rresResourceChunkInfo",
      description = "rres resource chunk info header (32 bytes)",
      fields = {
        {
          type = "unsigned char[4]",
          name = "type",
          description = "Resource chunk type (FourCC)"
        },
        {
          type = "unsigned int",
          name = "id",
          description = "Resource chunk identifier (generated from filename CRC32 hash)"
        },
        {
          type = "unsigned char",
          name = "compType",
          description = "Data compression algorithm"
        },
        {
          type = "unsigned char",
          name = "cipherType",
          description = "Data encription algorithm"
        },
        {
          type = "unsigned short",
          name = "flags",
          description = "Data flags (if required)"
        },
        {
          type = "unsigned int",
          name = "packedSize",
          description = "Data chunk size (compressed/encrypted + custom data appended)"
        },
        {
          type = "unsigned int",
          name = "baseSize",
          description = "Data base size (uncompressed/unencrypted)"
        },
        {
          type = "unsigned int",
          name = "nextOffset",
          description = "Next resource chunk global offset (if resource has multiple chunks)"
        },
        {
          type = "unsigned int",
          name = "reserved",
          description = "<reserved>"
        },
        {
          type = "unsigned int",
          name = "crc32",
          description = "Data chunk CRC32 (propCount + props[] + data)"
        }
      }
    },
    {
      name = "rresResourceChunkData",
      description = "rres resource chunk data",
      fields = {
        {
          type = "unsigned int",
          name = "propCount",
          description = "Resource chunk properties count"
        },
        {
          type = "unsigned int *",
          name = "props",
          description = "Resource chunk properties"
        },
        {
          type = "void *",
          name = "raw",
          description = "Resource chunk raw data"
        }
      }
    },
    {
      name = "rresResourceChunk",
      description = "rres resource chunk",
      fields = {
        {
          type = "rresResourceChunkInfo",
          name = "info",
          description = "Resource chunk info"
        },
        {
          type = "rresResourceChunkData",
          name = "data",
          description = "Resource chunk packed data, contains propCount, props[] and raw data"
        }
      }
    },
    {
      name = "rresResourceMulti",
      description = "NOTE: It supports multiple resource chunks",
      fields = {
        {
          type = "unsigned int",
          name = "count",
          description = "Resource chunks count"
        },
        {
          type = "rresResourceChunk *",
          name = "chunks",
          description = "Resource chunks"
        }
      }
    },
    {
      name = "rresDirEntry",
      description = "CDIR: rres central directory entry",
      fields = {
        {
          type = "unsigned int",
          name = "id",
          description = "Resource id"
        },
        {
          type = "unsigned int",
          name = "offset",
          description = "Resource global offset in file"
        },
        {
          type = "unsigned int",
          name = "reserved",
          description = "reserved"
        },
        {
          type = "unsigned int",
          name = "fileNameSize",
          description = "Resource fileName size (NULL terminator and 4-byte alignment padding considered)"
        },
        {
          type = "char[RRES_MAX_FILENAME_SIZE]",
          name = "fileName",
          description = "Resource original fileName (NULL terminated and padded to 4-byte alignment)"
        }
      }
    },
    {
      name = "rresCentralDir",
      description = "NOTE: This data conforms the rresResourceChunkData",
      fields = {
        {
          type = "unsigned int",
          name = "count",
          description = "Central directory entries count"
        },
        {
          type = "rresDirEntry *",
          name = "entries",
          description = "Central directory entries"
        }
      }
    },
    {
      name = "rresFontGlyphInfo",
      description = "NOTE: And array of this type conforms the rresResourceChunkData",
      fields = {
        {
          type = "int",
          name = "x",
          description = "Glyph rectangle in the atlas image"
        },
        {
          type = "int",
          name = "y",
          description = "Glyph rectangle in the atlas image"
        },
        {
          type = "int",
          name = "width",
          description = "Glyph rectangle in the atlas image"
        },
        {
          type = "int",
          name = "height",
          description = "Glyph rectangle in the atlas image"
        },
        {
          type = "int",
          name = "value",
          description = "Glyph codepoint value"
        },
        {
          type = "int",
          name = "offsetX",
          description = "Glyph drawing offset (from base line)"
        },
        {
          type = "int",
          name = "offsetY",
          description = "Glyph drawing offset (from base line)"
        },
        {
          type = "int",
          name = "advanceX",
          description = "Glyph advance X for next character"
        }
      }
    }
  },
  aliases = {
  },
  enums = {
  },
  callbacks = {
  },
  functions = {
    {
      name = "rresLoadResourceChunk",
      description = "Load one resource chunk for provided id",
      returnType = "rresResourceChunk",
      params = {
        {type = "const char *", name = "fileName"},
        {type = "int", name = "rresId"}
      }
    },
    {
      name = "rresUnloadResourceChunk",
      description = "Unload resource chunk from memory",
      returnType = "void",
      params = {
        {type = "rresResourceChunk", name = "chunk"}
      }
    },
    {
      name = "rresLoadResourceMulti",
      description = "Load resource for provided id (multiple resource chunks)",
      returnType = "rresResourceMulti",
      params = {
        {type = "const char *", name = "fileName"},
        {type = "int", name = "rresId"}
      }
    },
    {
      name = "rresUnloadResourceMulti",
      description = "Unload resource from memory (multiple resource chunks)",
      returnType = "void",
      params = {
        {type = "rresResourceMulti", name = "multi"}
      }
    },
    {
      name = "rresLoadResourceChunkInfo",
      description = "Load resource chunk info for provided id",
      returnType = "rresResourceChunkInfo",
      params = {
        {type = "const char *", name = "fileName"},
        {type = "int", name = "rresId"}
      }
    },
    {
      name = "rresLoadResourceChunkInfoAll",
      description = "Load all resource chunks info",
      returnType = "rresResourceChunkInfo *",
      params = {
        {type = "const char *", name = "fileName"},
        {type = "unsigned int *", name = "chunkCount"}
      }
    },
    {
      name = "rresLoadCentralDirectory",
      description = "Load central directory resource chunk from file",
      returnType = "rresCentralDir",
      params = {
        {type = "const char *", name = "fileName"}
      }
    },
    {
      name = "rresUnloadCentralDirectory",
      description = "Unload central directory resource chunk",
      returnType = "void",
      params = {
        {type = "rresCentralDir", name = "dir"}
      }
    },
    {
      name = "rresGetDataType",
      description = "Get rresResourceDataType from FourCC code",
      returnType = "unsigned int",
      params = {
        {type = "const unsigned char *", name = "fourCC"}
      }
    },
    {
      name = "rresGetResourceId",
      description = "Get resource id for a provided filename",
      returnType = "int",
      params = {
        {type = "rresCentralDir", name = "dir"},
        {type = "const char *", name = "fileName"}
      }
    },
    {
      name = "rresComputeCRC32",
      description = "Compute CRC32 for provided data",
      returnType = "unsigned int",
      params = {
        {type = "const unsigned char *", name = "data"},
        {type = "int", name = "len"}
      }
    },
    {
      name = "rresSetCipherPassword",
      description = "Set password to be used on data decryption",
      returnType = "void",
      params = {
        {type = "const char *", name = "pass"}
      }
    },
    {
      name = "rresGetCipherPassword",
      description = "Get password to be used on data decryption",
      returnType = "const char *"
    }
  }
}
