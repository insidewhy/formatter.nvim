local M = {}

function M.yapf()
  return {
    exe = "yapf",
    stdin = true,
  }
end

function M.autopep8()
  return {
    exe = "autopep8",
    args = { "-" },
    stdin = 1,
  }
end

function M.isort()
  local util = require("formatter.util")
  return {
    exe = "isort",
    args = { "-q", "--filename", "$FILE_PATH", "-" },
    stdin = true,
  }
end

function M.docformatter()
  return {
    exe = "docformatter",
    args = { "-" },
    stdin = true,
  }
end

function M.black()
  local util = require("formatter.util")
  return {
    exe = "black",
    args = { "-q", "--stdin-filename", "$FILE_NAME", "-" },
    stdin = true,
  }
end

function M.ruff()
  return {
    exe = "ruff",
    args = { "format", "-q", "-" },
    stdin = true,
  }
end

function M.pyment()
  return {
    exe = "pyment",
    args = { "-w", "-" },
    stdin = true,
  }
end

function M.pydevf()
  return {
    exe = "pydevf",
  }
end

function M.autoflake()
  return {
    exe = "autoflake",
    args = { "--quiet", "-" },
    stdin = true,
  }
end

return M
