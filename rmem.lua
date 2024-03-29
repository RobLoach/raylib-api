return {
  defines = {
    {
      name = "RMEM_H",
      type = "GUARD",
      value = "",
      description = ""
    },
    {
      name = "RMEMAPI",
      type = "UNKNOWN",
      value = "__declspec(dllexport)",
      description = "We are building library as a Win32 shared library (.dll)"
    },
    {
      name = "RMEM_VERSION",
      type = "STRING",
      value = "v1.3",
      description = "changelog at bottom of header."
    }
  },
  structs = {
    {
      name = "MemNode",
      description = "Memory pool node",
      fields = {
        {
          type = "size_t",
          name = "size",
          description = ""
        },
        {
          type = "MemNode *",
          name = "next",
          description = ""
        },
        {
          type = "MemNode *",
          name = "prev",
          description = ""
        }
      }
    },
    {
      name = "AllocList",
      description = "Freelist implementation",
      fields = {
        {
          type = "MemNode *",
          name = "head",
          description = ""
        },
        {
          type = "MemNode *",
          name = "tail",
          description = ""
        },
        {
          type = "size_t",
          name = "len",
          description = ""
        }
      }
    },
    {
      name = "Arena",
      description = "Arena allocator",
      fields = {
        {
          type = "uintptr_t",
          name = "mem",
          description = ""
        },
        {
          type = "uintptr_t",
          name = "offs",
          description = ""
        },
        {
          type = "size_t",
          name = "size",
          description = ""
        }
      }
    },
    {
      name = "MemPool",
      description = "Memory pool",
      fields = {
        {
          type = "AllocList",
          name = "large",
          description = ""
        },
        {
          type = "AllocList[MEMPOOL_BUCKET_SIZE]",
          name = "buckets",
          description = ""
        },
        {
          type = "Arena",
          name = "arena",
          description = ""
        }
      }
    },
    {
      name = "ObjPool",
      description = "Object pool",
      fields = {
        {
          type = "uintptr_t",
          name = "mem",
          description = ""
        },
        {
          type = "uintptr_t",
          name = "offs",
          description = ""
        },
        {
          type = "size_t",
          name = "objSize",
          description = ""
        },
        {
          type = "size_t",
          name = "freeBlocks",
          description = ""
        },
        {
          type = "size_t",
          name = "memSize",
          description = ""
        }
      }
    },
    {
      name = "BiStack",
      description = "Double-ended stack (aka Deque)",
      fields = {
        {
          type = "uintptr_t",
          name = "mem",
          description = ""
        },
        {
          type = "uintptr_t",
          name = "front",
          description = ""
        },
        {
          type = "uintptr_t",
          name = "back",
          description = ""
        },
        {
          type = "size_t",
          name = "size",
          description = ""
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
      name = "CreateMemPool",
      description = "",
      returnType = "MemPool",
      params = {
        {type = "size_t", name = "bytes"}
      }
    },
    {
      name = "CreateMemPoolFromBuffer",
      description = "",
      returnType = "MemPool",
      params = {
        {type = "void *", name = "buf"},
        {type = "size_t", name = "bytes"}
      }
    },
    {
      name = "DestroyMemPool",
      description = "",
      returnType = "void",
      params = {
        {type = "MemPool *", name = "mempool"}
      }
    },
    {
      name = "MemPoolAlloc",
      description = "",
      returnType = "void *",
      params = {
        {type = "MemPool *", name = "mempool"},
        {type = "size_t", name = "bytes"}
      }
    },
    {
      name = "MemPoolRealloc",
      description = "",
      returnType = "void *",
      params = {
        {type = "MemPool *", name = "mempool"},
        {type = "void *", name = "ptr"},
        {type = "size_t", name = "bytes"}
      }
    },
    {
      name = "MemPoolFree",
      description = "",
      returnType = "void",
      params = {
        {type = "MemPool *", name = "mempool"},
        {type = "void *", name = "ptr"}
      }
    },
    {
      name = "MemPoolCleanUp",
      description = "",
      returnType = "void",
      params = {
        {type = "MemPool *", name = "mempool"},
        {type = "void **", name = "ptrref"}
      }
    },
    {
      name = "MemPoolReset",
      description = "",
      returnType = "void",
      params = {
        {type = "MemPool *", name = "mempool"}
      }
    },
    {
      name = "GetMemPoolFreeMemory",
      description = "",
      returnType = "size_t",
      params = {
        {type = "const MemPool", name = "mempool"}
      }
    },
    {
      name = "CreateObjPool",
      description = "",
      returnType = "ObjPool",
      params = {
        {type = "size_t", name = "objsize"},
        {type = "size_t", name = "len"}
      }
    },
    {
      name = "CreateObjPoolFromBuffer",
      description = "",
      returnType = "ObjPool",
      params = {
        {type = "void *", name = "buf"},
        {type = "size_t", name = "objsize"},
        {type = "size_t", name = "len"}
      }
    },
    {
      name = "DestroyObjPool",
      description = "",
      returnType = "void",
      params = {
        {type = "ObjPool *", name = "objpool"}
      }
    },
    {
      name = "ObjPoolAlloc",
      description = "",
      returnType = "void *",
      params = {
        {type = "ObjPool *", name = "objpool"}
      }
    },
    {
      name = "ObjPoolFree",
      description = "",
      returnType = "void",
      params = {
        {type = "ObjPool *", name = "objpool"},
        {type = "void *", name = "ptr"}
      }
    },
    {
      name = "ObjPoolCleanUp",
      description = "",
      returnType = "void",
      params = {
        {type = "ObjPool *", name = "objpool"},
        {type = "void **", name = "ptrref"}
      }
    },
    {
      name = "CreateBiStack",
      description = "",
      returnType = "BiStack",
      params = {
        {type = "size_t", name = "len"}
      }
    },
    {
      name = "CreateBiStackFromBuffer",
      description = "",
      returnType = "BiStack",
      params = {
        {type = "void *", name = "buf"},
        {type = "size_t", name = "len"}
      }
    },
    {
      name = "DestroyBiStack",
      description = "",
      returnType = "void",
      params = {
        {type = "BiStack *", name = "destack"}
      }
    },
    {
      name = "BiStackAllocFront",
      description = "",
      returnType = "void *",
      params = {
        {type = "BiStack *", name = "destack"},
        {type = "size_t", name = "len"}
      }
    },
    {
      name = "BiStackAllocBack",
      description = "",
      returnType = "void *",
      params = {
        {type = "BiStack *", name = "destack"},
        {type = "size_t", name = "len"}
      }
    },
    {
      name = "BiStackResetFront",
      description = "",
      returnType = "void",
      params = {
        {type = "BiStack *", name = "destack"}
      }
    },
    {
      name = "BiStackResetBack",
      description = "",
      returnType = "void",
      params = {
        {type = "BiStack *", name = "destack"}
      }
    },
    {
      name = "BiStackResetAll",
      description = "",
      returnType = "void",
      params = {
        {type = "BiStack *", name = "destack"}
      }
    },
    {
      name = "BiStackMargins",
      description = "",
      returnType = "intptr_t",
      params = {
        {type = "BiStack", name = "destack"}
      }
    }
  }
}
