import sys
from typing import Set

from talon import Context, Module, actions

mod = Module()
mod.list("abbreviation", desc="Common abbreviation")


@mod.capture
def abbreviation(m) -> str:
    "One abbreviation"


ctx = Context()
ctx.lists["user.abbreviation"] = {
    "address": "addr",
    "administrator": "admin",
    "administrators": "admins",
    "advance": "adv",
    "advanced": "adv",
    "alternative": "alt",
    "application": "app",
    "applications": "apps",
    "argument": "arg",
    "arguments": "args",
    "attribute": "attr",
    "attributes": "attrs",
    "authenticate": "auth",
    "authentication": "auth",
    "binary": "bin",
    "button": "btn",
    "centimeter": "cm",
    "char": "chr",
    "character": "char",
    "class": "cls",
    "command": "cmd",
    "comment": "cmt",
    "compare": "cmp",
    "config": "cfg",
    "configuration": "cfg",
    "context": "ctx",
    "control": "ctrl",
    "copy": "cpy",
    "database": "db",
    "debug": "dbg",
    "define": "def",
    "definition": "def",
    "description": "desc",
    "develop": "dev",
    "development": "dev",
    "dictation": "dict",
    "dictionary": "dict",
    "direction": "dir",
    "directory": "dir",
    "document": "doc",
    "documents": "docs",
    "double": "dbl",
    "dupe": "dup",
    "duplicate": "dup",
    "dynamic": "dyn",
    "enumerate": "enum",
    "environment": "env",
    "escape": "esc",
    "example": "ex",
    "exception": "exc",
    "execute": "exec",
    "expression": "exp",
    "extend": "ext",
    "extension": "ext",
    "framework": "fw",
    "function": "func",
    "image": "img",
    "information": "info",
    "initialize": "init",
    "initializer": "init",
    "instance": "inst",
    "integer": "int",
    "iterate": "iter",
    "java archive": "jar",
    "javascript": "js",
    "jump": "jmp",
    "keyboard": "kbd",
    "keyword arguments": "kwargs",
    "keyword": "kw",
    "kilogram": "kg",
    "kilometer": "km",
    "language": "lng",
    "latex": "tex",
    "library": "lib",
    "length": "len",
    "library": "lib",
    "markdown": "md",
    "message": "msg",
    "milligram": "mg",
    "millisecond": "ms",
    "miscellaneous": "misc",
    "mount": "mnt",
    "nano second": "ns",
    "number": "num",
    "object": "obj",
    "okay": "ok",
    "package": "pkg",
    "parameter": "param",
    "parameters": "params",
    "pico second": "ps",
    "pixel": "px",
    "point": "pt",
    "pointer": "ptr",
    "position": "pos",
    "previous": "prev",
    "property": "prop",
    "public": "pub",
    "python": "py",
    "query string": "qs",
    "random": "rnd",
    "receipt": "rcpt",
    "reference": "ref",
    "references": "refs",
    "register": "reg",
    "regular expression": "regex",
    "regular expressions": "regex",
    "represent": "repr",
    "representation": "repr",
    "request": "req",
    "return": "ret",
    "revision": "rev",
    "ruby": "rb",
    "service pack": "sp",
    "session id": "sid",
    "shell": "sh",
    "source": "src",
    "special": "spec",
    "specific": "spec",
    "specification": "spec",
    "specify": "spec",
    "standard in": "stdin",
    "standard out": "stdout",
    "standard": "std",
    "string": "str",
    "structure": "struct",
    "synchronize": "sync",
    "synchronous": "sync",
    "system": "sys",
    "table of contents": "toc",
    "table": "tbl",
    "technology": "tech",
    "temporary": "tmp",
    "text": "txt",
    "token": "tok",
    "user": "usr",
    "utilities": "utils",
    "utility": "util",
    "value": "val",
    "variable": "var",
    "verify": "vrfy",
    "versus": "vs",
    "window": "win",
}


@ctx.capture(rule="{user.abbreviation}")
def abbreviation(m):
    return m.abbreviation