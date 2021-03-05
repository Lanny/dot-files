config.load_autoconfig()

# Stick tabs on the left
c.tabs.position = 'left'
c.tabs.padding = {'bottom': 9, 'left': 5, 'right': 5, 'top': 9}
c.tabs.favicons.scale = 2.0

# Restyle tabs for higher contrast ratio
c.tabs.width = 300
c.fonts.tabs.selected = '12pt Helvetica'
c.fonts.tabs.unselected = '12pt Helvetica'
c.colors.tabs.even.bg = '#595959'
c.colors.tabs.odd.bg = '#3D3D3D'
c.colors.tabs.even.fg = '#FFFFFF'
c.colors.tabs.indicator.start = '#0000aa'

# Configure external editor and content signing.
c.editor.command = ['edit-and-sign', '-v', '-p', '{}']
c.editor.encoding = 'utf-8'

# Misc config stuffff
c.downloads.location.prompt = False
c.hints.chars = 'qsefthuko;vn'
c.scrolling.smooth = True
c.spellcheck.languages = ['en-US']

config.bind('<Ctrl-j>', 'tab-move +')
config.bind('<Ctrl-k>', 'tab-move -')

