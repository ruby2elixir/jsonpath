small = %{
  "a" => %{
    "b" => %{
      "c" => [1, 2, 3, 4, 5, 6, 7, 8, 9]
    }
  }
}

small_atom = %{
  a: %{
    b: %{
      c: [1, 2, 3, 4, 5, 6, 7, 8, 9]
    }
  }
}

medium = %{
  "a" => %{
    "b" => %{
      "c" => [1, 2, 3, 4, 5, 6, 7, 8, 9]
    }
  },
  "b" => %{
    "b" => %{
      "c" => [1, 2, 3, 4, 5, 6, 7, 8, 9]
    }
  },
  "c" => %{
    "b" => %{
      "c" => [1, 2, 3, 4, 5, 6, 7, 8, 9]
    }
  },
  "d" => %{
    "b" => %{
      "c" => [1, 2, 3, 4, 5, 6, 7, 8, 9]
    }
  }
}

Benchee.run(%{
  "jsonpath.small" => fn -> Jsonpath.path(small, "a.b.c[9]") end,
  "jquish.small" => fn -> Jqish.run(small, "a.b.c.[9]") end,
  "jsonpath.small_atom" => fn -> Jsonpath.path(small_atom, "<atom>a.<atom>b.<atom>c[9]") end
  # "jsonpath.medium" => fn -> Jsonpath.path(medium, "a.b.c[9]") end
})
