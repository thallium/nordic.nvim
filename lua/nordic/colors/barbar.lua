-- andersevenrud/nordic.nvim
return function(c, s, cs)
    -- c: color palette table
    --  see the palette file for available entries
    -- s: styles table
    --  none, bold, underline, italic, undercurl, strikethrough, reverse, inverse, standout, nocombine
    -- cs: user defined/configured styles table
    --  none, underline, italic, comments
    --  bg(name) -> default or alternate background color based on configuration

    local fg_target = c.red

    local fg_current = c.dark_white
    local fg_visible = c.cyan
    local fg_inactive = c.grayish

    local fg_modified = c.yellow
    local fg_special = c.blue
    local fg_subtle = c.grayish

    local bg_current = c.bright_black
    local bg_visible = c.dark_black
    local bg_inactive = c.dark_black


    return {
        { 'BufferCurrent',        fg_current,  bg_current },
        { 'BufferCurrentIndex',   fg_special,  bg_current },
        { 'BufferCurrentMod',     fg_modified, bg_current },
        { 'BufferCurrentSign',    fg_special,  bg_current },
        { 'BufferCurrentTarget',  fg_target,   bg_current,   s.bold },
        { 'BufferVisible',        fg_visible,  bg_visible },
        { 'BufferVisibleIndex',   fg_visible,  bg_visible },
        { 'BufferVisibleMod',     fg_modified, bg_visible },
        { 'BufferVisibleSign',    fg_visible,  bg_visible },
        { 'BufferVisibleTarget',  fg_target,   bg_visible,   s.bold },
        { 'BufferInactive',       fg_inactive, bg_inactive },
        { 'BufferInactiveIndex',  fg_subtle,   bg_inactive },
        { 'BufferInactiveMod',    fg_modified, bg_inactive },
        { 'BufferInactiveSign',   fg_subtle,   bg_inactive },
        { 'BufferInactiveTarget', fg_target,   bg_inactive,  s.bold },
        { 'BufferTabpages',       fg_special,  bg_inactive, s.bold },
        { 'BufferTabpageFill',    fg_inactive, bg_inactive },
    }
end
