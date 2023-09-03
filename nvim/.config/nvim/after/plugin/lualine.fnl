((. (require :lualine) :setup) {:options {:component_separators ""
                                          :section_separators ""
                                          :theme :gruvbox-material}
                                :sections {:lualine_a [:mode]
                                           :lualine_b [:branch
                                                       :diff
                                                       :diagnostics]
                                           :lualine_c {}
                                           :lualine_x [:encoding
                                                       :fileformat
                                                       :filetype]
                                           :lualine_y {}
                                           :lualine_z [:location]}})
