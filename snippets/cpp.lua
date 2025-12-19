local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

-- for loop
local cfor = s(
  "cfor",
  fmt(
    [[
for (int i = {}; i < {}; i{}) {{
  {}
}}
]],
    { i(1, "0"), i(2, "n"), i(3, "++"), i(4) }
  )
)

-- main boilerplate
local boil = s(
  "boil",
  fmt(
    [[
#include <bits/stdc++.h>
using namespace std;

int main() {{
  {}
  return 0;
}}
]],
    { i(1) }
  )
)

-- vector template
local vec = s(
  "vec",
  fmt(
    [[
vector<{}> {}({});
]],
    { i(1, "int"), i(2, "v"), i(3, "n") }
  )
)

-- class template
local cls = s(
  "cls",
  fmt(
    [[
class {} {{
public:
  {}() {{}}

  {}
}};
]],
    { i(1, "ClassName"), i(2, "ClassName"), i(3) }
  )
)

ls.add_snippets("cpp", { cfor, boil, vec, cls })
