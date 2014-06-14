part of highcharts4dart;

abstract class ToMap {
  Map toMap ();
}

class OptionsObject extends Object with ChangeNotifier {
  
  Map _moreOptions;
  /**
   * This Angular Dart component tries to be as comprehensive as possible but some highchart 
   * properties may not be covered by this implementation. Any property not available in this 
   * implementation can be added in this map and the js highcharts will get it  
   */
  @reflectable set moreOptions (Map m) {
    _moreOptions = configureNotifiers(#moreOptions, _moreOptions, m);
  }
  @reflectable Map get moreOptions => _moreOptions;
  
  dynamic configureNotifiers (Symbol symbol, dynamic oldValue, dynamic newValue) {
    notifyPropertyChange(symbol, oldValue, newValue);
    var out = toObservable(newValue);
    if (out is Observable) 
      (out as Observable).changes.listen ((_) { notifyPropertyChange(symbol, null, newValue); });
    if (out is Iterable) {
      for (var item in out) {
        if (item is OptionsObject) {
          (item as Observable).changes.listen((_) { notifyPropertyChange(symbol, null, newValue);});
        }
      }
    }
    return out;
  }
}

class HighChart extends OptionsObject implements ToMap  {
  
  Chart _chart;
  /**
   * Options regarding the chart area and plot area as well as general chart options.
   */
  @reflectable set chart (Chart c) {
    _chart = configureNotifiers(#chart, _chart, c);
  }
  @reflectable Chart get chart => _chart;
  
  List<String> _colors;
  /**
   * An array containing the default colors for the chart's series. When all colors are used, new colors are pulled from the start again. Defaults to:
   */
  @reflectable set colors (List<String> a_colors) {
    _colors = configureNotifiers(#colors, _colors, a_colors);
  }
  @reflectable List<String> get colors => _colors;
  
  Credits _credits;
  /**
   * Highchart by default puts a credits label in the lower right corner of the chart. This can be changed using these options.
   */
  @reflectable set credits (Credits a_credits) {
    _credits = configureNotifiers(#credits, _credits, a_credits);
  }
  @reflectable Credits get credits => _credits;
  
  DrillDown _drilldown;
  /**
   * Options for drill down, the concept of inspecting increasingly high resolution data through clicking on chart items like columns or pie slices.
   */
  @reflectable set drilldown (DrillDown a_drilldown) {
    _drilldown = configureNotifiers(#drilldown, _drilldown, a_drilldown);
  }
  @reflectable DrillDown get drilldown => _drilldown;
  

  Exporting _exporting;
  /**
   * Options for the exporting module. For an overview on the matter, see the docs.
   */
  @reflectable set exporting (Exporting a_exporting) {
    _exporting = configureNotifiers(#exporting, _exporting, a_exporting);
  }
  @reflectable Exporting get exporting => _exporting;
  
  Labels _labels;
  /**
   * HTML labels that can be positioined anywhere in the chart area.
   */
  @reflectable set labels (Labels a_labels) {
    _labels = configureNotifiers(#labels, _labels, a_labels);
  }
  @reflectable Labels get labels => _labels;
  
  
  Legend _legend;
  /**
   * The legend is a box containing a symbol and name for each series item or point item in the chart.
   */
  @reflectable set legend (Legend l) {
    _legend = configureNotifiers (#legend, _legend, l);
  }
  @reflectable Legend get legend => _legend;
  
  
  Loading _loading;
  /**
   * The loading options control the appearance of the loading screen that covers the plot area on chart operations. This screen only appears after an explicit call to chart.showLoading(). It is a utility for developers to communicate to the end user that something is going on, for example while retrieving new data via an XHR connection. The "Loading..." text itself is not part of this configuration object, but part of the lang object.
   */
  @reflectable set loading (Loading a_loading) {
    _loading = configureNotifiers(#loading, _loading, a_loading);
  }
  @reflectable Loading get loading => _loading;
  
  Navigation _navigation;
  /**
   * A collection of options for buttons and menus appearing in the exporting module.
   */
  @reflectable set navigation (Navigation a_navigation) {
    _navigation = configureNotifiers(#navigation, _navigation, a_navigation);
  }
  @reflectable Navigation get navigation => _navigation;
  
  Map _noData;
  /**
   * Options for displaying a message like "No data to display". This feature requires the file no-data-to-display.js to be loaded in the page.
   */
  @reflectable set noData (Map a_noData) {
    _noData = configureNotifiers(#noData, _noData, a_noData);
  }
  @reflectable Map get noData => _noData;
  
  Pane _pane;
  /**
   * Applies only to polar charts and angular gauges. This configuration object holds general options for the combined X and Y axes set. Each xAxis or yAxis can reference the pane by index.
   */
  @reflectable set pane (Pane a_pane) {
    _pane = configureNotifiers(#pane, _pane, a_pane);
  }
  @reflectable Pane get pane => _pane;
  
  PlotOptions _plotOptions;
  /**
   * The plotOptions is a wrapper object for config objects for each series type. The config objects for each series can also be overridden for each series item as given in the series array.
   * Configuration options for the series are given in three levels. Options for all series in a chart are given in the plotOptions.series object. Then options for all series of a specific type are given in the plotOptions of that type, for example plotOptions.line. Next, options for one single series are given in the series array.
   */
  @reflectable set plotOptions (PlotOptions a_plotOptions) {
    _plotOptions = configureNotifiers(#plotOptions, _plotOptions, a_plotOptions);
  }
  @reflectable PlotOptions get plotOptions => _plotOptions;
  
  /**
   * The actual series to append to the chart. In addition to the members listed below, any member of the plotOptions for that specific type of plot can be added to a series individually. For example, even though a general lineWidth is specified in plotOptions.series, an individual lineWidth can be specified for each series. 
   */
  List<Series> _series;
  @reflectable set series (List<Series> s) {
    /*_series = toObservable(s);
    (_series as ObservableList).changes.listen ((_) { notifyPropertyChange(#series, _series, s); });
    */
    _series = configureNotifiers(#series, _series, s);
  }
  @reflectable List<Series> get series => _series;
  
  Subtitle _subtitle;
  /**
   * The chart's subtitle
   */
  @reflectable set subtitle (Subtitle a_subtitle) {
    _subtitle = configureNotifiers(#subtitle, _subtitle, a_subtitle);
  }
  @reflectable Subtitle get subtitle => _subtitle;
  
  Title _title;
  /**
   * The chart's title
   */
  @reflectable set title (Title a_title) {
    _title = configureNotifiers(#title, _title, a_title);
  }
  @reflectable Title get title => _title;
  
  Tooltip _tooltip;
  /**
   * Options for the tooltip that appears when the user hovers over a series or point.
   */
  @reflectable set tooltip (Tooltip a_tooltip) {
    _tooltip = configureNotifiers(#tooltip, _tooltip, a_tooltip);
  }
  @reflectable Tooltip get tooltip => _tooltip;
  
  XAxis _xAxis;
  /**
   * The X axis or category axis. Normally this is the horizontal axis, though if the chart is inverted this is the vertical axis. In case of multiple axes, the xAxis node is an array of configuration objects.
   */
  @reflectable set xAxis (XAxis a_xAxis) {
    _xAxis = configureNotifiers(#xAxis, _xAxis, a_xAxis);
  }
  @reflectable XAxis get xAxis => _xAxis;
  
  YAxis _yAxis;
  /**
   * The Y axis or value axis. Normally this is the vertical axis, though if the chart is inverted this is the horiontal axis. In case of multiple axes, the yAxis node is an array of configuration objects.
   */
  @reflectable set yAxis (YAxis a_yAxis) {
    _yAxis = configureNotifiers(#yAxis, _yAxis, a_yAxis);
  }
  @reflectable YAxis get yAxis => _yAxis;
  
  Map toMap () {
    Map map = new Map ();
    addMapValue(map, 'chart', this.chart);
    addMapValue(map, 'colors', this.colors);
    addMapValue(map, 'credits', this.credits);
    addMapValue(map, 'drilldown', this.drilldown);
    addMapValue(map, 'exporting', this.exporting);
    addMapValue(map, 'labels', this.labels);
    addMapValue(map, 'legend', this.legend);
    addMapValue(map, 'loading', this.loading);
    addMapValue(map, 'navigation', this.navigation);
    addMapValue(map, 'noData', this.noData);
    addMapValue(map, 'pane', this.pane);
    addMapValue(map, 'plotOptions', this.plotOptions);
    addMapValue(map, 'series', this.series);
    addMapValue(map, 'subtitle', this.subtitle);
    addMapValue(map, 'title', this.title);
    addMapValue(map, 'tooltip', this.tooltip);
    addMapValue(map, 'xAxis', this.xAxis);
    addMapValue(map, 'yAxis', this.yAxis);
    if (moreOptions != null) {
      map.addAll(moreOptions);
    }
    return map;
  }
}

class Labels extends OptionsObject implements ToMap {
  List _items;
  /**
   * A HTML label that can be positioined anywhere in the chart area.
   */
  @reflectable set items (List  a_items) {
    _items = configureNotifiers(#items, _items, a_items);
  }
  @reflectable List  get items => _items;

  
  Map _style;
  /**
   * Shared CSS styles for all labels. Defaults to:
  style: {
          color: '#3E576F'
  }
   */
  @reflectable set style (Map  a_style) {
    _style = configureNotifiers(#style, _style, a_style);
  }
  @reflectable Map  get style => _style;

  Map toMap () {
    Map map = new Map ();
    addMapValue(map, 'items', this.items);
    addMapValue(map, 'style', this.style);
    if (moreOptions != null) 
      map.addAll(moreOptions);
    return map;
  }
  
}

class Pane extends OptionsObject implements ToMap {
  List _background;
  /**
   * An object, or array of objects, for backgrounds. Sub options include backgroundColor (can be solid or gradient), shape (solid or arc), innerWidth, outerWidth, borderWidth, borderColor.
   */
  @reflectable set background (List  a_background) {
    _background = configureNotifiers(#background, _background, a_background);
  }
  @reflectable List  get background => _background;


  List _center;
  /**
   * The center of a polar chart or angular gauge, given as an array of [x, y] positions. Positions can be given as integers that transform to pixels, or as percentages of the plot area size. Defaults to [50%, 50%].
   */
  @reflectable set center (List  a_center) {
    _center = configureNotifiers(#center, _center, a_center);
  }
  @reflectable List  get center => _center;


  num _endAngle;
  /**
   * The end angle of the polar X axis or gauge value axis, given in degrees where 0 is north. Defaults to startAngle + 360.
   */
  @reflectable set endAngle (num  a_endAngle) {
    _endAngle = configureNotifiers(#endAngle, _endAngle, a_endAngle);
  }
  @reflectable num  get endAngle => _endAngle;


  num _startAngle;
  /**
   * The start angle of the polar X axis or gauge axis, given in degrees where 0 is north. Defaults to 0.
   */
  @reflectable set startAngle (num  a_startAngle) {
    _startAngle = configureNotifiers(#startAngle, _startAngle, a_startAngle);
  }
  @reflectable num  get startAngle => _startAngle;

  Map toMap () {
    Map map = new Map ();
    addMapValue(map, 'background', this.background);
    addMapValue(map, 'center', this.center);
    addMapValue(map, 'endAngle', this.endAngle);
    addMapValue(map, 'startAngle', this.startAngle);
    if (moreOptions != null) {
      map.addAll(moreOptions);
    }
    return map;
  }
}

class Exporting extends OptionsObject implements ToMap {
  Map _buttons;
  /**
   * Options for the export related buttons, print and export. In addition to the default buttons listed here, custom buttons can be added. See navigation.buttonOptions for general options.
   */
  @reflectable set buttons (Map  a_buttons) {
    _buttons = configureNotifiers(#buttons, _buttons, a_buttons);
  }
  @reflectable Map  get buttons => _buttons;


  Map _chartOptions;
  /**
   * Additional chart options to be merged into an exported chart. For example, the exported chart can be given a specific width and height, or a printer-friendly color scheme. Defaults to null.
   */
  @reflectable set chartOptions (Map  a_chartOptions) {
    _chartOptions = configureNotifiers(#chartOptions, _chartOptions, a_chartOptions);
  }
  @reflectable Map  get chartOptions => _chartOptions;


  bool _enabled;
  /**
   * Whether to enable the exporting module. Disabling the module will hide the context button, but API methods will still be available. Defaults to true.
   */
  @reflectable set enabled (bool  a_enabled) {
    _enabled = configureNotifiers(#enabled, _enabled, a_enabled);
  }
  @reflectable bool  get enabled => _enabled;


  String _filename;
  /**
   * The filename, without extension, to use for the exported chart. Defaults to chart.
   */
  @reflectable set filename (String  a_filename) {
    _filename = configureNotifiers(#filename, _filename, a_filename);
  }
  @reflectable String  get filename => _filename;


  Map _formAttributes;
  /**
   * An object containing additional attributes for the POST form that sends the SVG to the export server. For example, a target can be set to make sure the generated image is received in another frame, or a custom enctype or encoding can be set.
   */
  @reflectable set formAttributes (Map  a_formAttributes) {
    _formAttributes = configureNotifiers(#formAttributes, _formAttributes, a_formAttributes);
  }
  @reflectable Map  get formAttributes => _formAttributes;


  num _scale;
  /**
   * Defines the scale or zoom factor for the exported image compared to the on-screen display. While for instance a 600px wide chart may look good on a website, it will look bad in print. The default scale of 2 makes this chart export to a 1200px PNG or JPG. Defaults to 2.
   */
  @reflectable set scale (num  a_scale) {
    _scale = configureNotifiers(#scale, _scale, a_scale);
  }
  @reflectable num  get scale => _scale;


  int _sourceHeight;
  /**
   * Analogous to sourceWidth
   */
  @reflectable set sourceHeight (int  a_sourceHeight) {
    _sourceHeight = configureNotifiers(#sourceHeight, _sourceHeight, a_sourceHeight);
  }
  @reflectable int  get sourceHeight => _sourceHeight;


  int _sourceWidth;
  /**
   * The width of the original chart when exported, unless an explicit chart.width is set. The width exported raster image is then multiplied byscale.
   */
  @reflectable set sourceWidth (int  a_sourceWidth) {
    _sourceWidth = configureNotifiers(#sourceWidth, _sourceWidth, a_sourceWidth);
  }
  @reflectable int  get sourceWidth => _sourceWidth;


  String _type;
  /**
   * Default MIME type for exporting if chart.exportChart() is called without specifying a type option. Possible values areimage/png, image/jpeg, application/pdf and image/svg+xml. Defaults to image/png.
   */
  @reflectable set type (String  a_type) {
    _type = configureNotifiers(#type, _type, a_type);
  }
  @reflectable String  get type => _type;


  String _url;
  /**
   * The URL for the server module converting the SVG string to an image format. By default this points to Highslide Software's free web service. Defaults to http://export.highcharts.com.
   */
  @reflectable set url (String  a_url) {
    _url = configureNotifiers(#url, _url, a_url);
  }
  @reflectable String  get url => _url;


  int _width;
  /**
   * The pixel width of charts exported to PNG or JPG. As of Highcharts 3.0, the default pixel width is a function of the chart.width orexporting.sourceWidth and the exporting.scale. Defaults to undefined.
   */
  @reflectable set width (int  a_width) {
    _width = configureNotifiers(#width, _width, a_width);
  }
  @reflectable int  get width => _width;


  Map toMap () {
    Map map = new Map ();
    addMapValue(map, 'buttons', this.buttons);
    addMapValue(map, 'chartOptions', this.chartOptions);
    addMapValue(map, 'enabled', this.enabled);
    addMapValue(map, 'filename', this.filename);
    addMapValue(map, 'formAttributes', this.formAttributes);
    addMapValue(map, 'scale', this.scale);
    addMapValue(map, 'sourceHeight', this.sourceHeight);
    addMapValue(map, 'sourceWidth', this.sourceWidth);
    addMapValue(map, 'type', this.type);
    addMapValue(map, 'url', this.url);
    addMapValue(map, 'width', this.width);
    if (moreOptions != null) {
      map.addAll(moreOptions);
    }
    return map;
  }
  
}

class DrillDown extends OptionsObject implements ToMap {
  Map _activeAxisLabelStyle;
  /**
   * Additional styles to apply to the X axis label for a point that has drilldown data. By default it is underlined and blue to invite to interaction. Defaults to:
  activeAxisLabelStyle: {
          cursor: 'pointer',
          color: '#0d233a',
          fontWeight: 'bold',
          textDecoration: 'underline'                        
  }
   */
  @reflectable set activeAxisLabelStyle (Map  a_activeAxisLabelStyle) {
    _activeAxisLabelStyle = configureNotifiers(#activeAxisLabelStyle, _activeAxisLabelStyle, a_activeAxisLabelStyle);
  }
  @reflectable Map  get activeAxisLabelStyle => _activeAxisLabelStyle;

  
  Map _activeDataLabelStyle;
  /**
   * Additional styles to apply to the data label of a point that has drilldown data. By default it is underlined and blue to invite to interaction. Defaults to:
  activeAxisLabelStyle: {
          cursor: 'pointer',
          color: '#0d233a',
          fontWeight: 'bold',
          textDecoration: 'underline'                        
  }
   */
  @reflectable set activeDataLabelStyle (Map  a_activeDataLabelStyle) {
    _activeDataLabelStyle = configureNotifiers(#activeDataLabelStyle, _activeDataLabelStyle, a_activeDataLabelStyle);
  }
  @reflectable Map  get activeDataLabelStyle => _activeDataLabelStyle;

  
  dynamic _animation;
  /**
   * Set the animation for all drilldown animations. Animation of a drilldown occurs when drilling between a column point and a column series, or a pie slice and a full pie series. Drilldown can still be used between series and points of different types, but animation will not occur.

  The animation can either be set as a boolean or a configuration object. If true, it will use the 'swing' jQuery easing and a duration of 500 ms. If used as a configuration object, the following properties are supported:

  duration
  The duration of the animation in milliseconds.
  easing
  When using jQuery as the general framework, the easing can be set to linear or swing. More easing functions are available with the use of jQuery plug-ins, most notably the jQuery UI suite. See the jQuery docs. When using MooTools as the general framework, use the property name transition instead of easing.
   */
  @reflectable set animation (dynamic  a_animation) {
    _animation = configureNotifiers(#animation, _animation, a_animation);
  }
  @reflectable dynamic  get animation => _animation;

  
  DrillUpButton _drillUpButton;
  /**
   * Options for the drill up button that appears when drilling down on a series. The text for the button is defined in lang.drillUpText.
   */
  @reflectable set drillUpButton (DrillUpButton  a_drillUpButton) {
    _drillUpButton = configureNotifiers(#drillUpButton, _drillUpButton, a_drillUpButton);
  }
  @reflectable DrillUpButton  get drillUpButton => _drillUpButton;

  
  List<Map> _series;
  /**
   * An array of series configurations for the drill down. Each series configuration uses the same syntax as the series option set. These drilldown series are hidden by default. The drilldown series is linked to the parent series' point by its id.
   */
  @reflectable set series (List<Map>  a_series) {
    _series = configureNotifiers(#series, _series, a_series);
  }
  @reflectable List<Map>  get series => _series;

  Map toMap () {
    Map map = new Map ();
    addMapValue(map, 'activeAxisLabelStyle', this.activeAxisLabelStyle);
    addMapValue(map, 'activeDataLabelStyle', this.activeDataLabelStyle);
    addMapValue(map, 'animation', this.animation);
    addMapValue(map, 'drillUpButton', this.drillUpButton);
    addMapValue(map, 'series', this.series);
    if (moreOptions != null) {
      map.addAll(moreOptions);
    }
    return map;
  }
  
}

class DrillUpButton extends OptionsObject implements ToMap {
  Map _position;
  /**
   * Positioning options for the button within the relativeTo box. Available properties are x, y, align and verticalAlign.
   */
  @reflectable set position (Map  a_position) {
    _position = configureNotifiers(#position, _position, a_position);
  }
  @reflectable Map  get position => _position;

  
  String _relativeTo;
  /**
   * What box to align the button to. Can be either ""plotBox"" or ""spacingBox"". Defaults to plotBox.
   */
  @reflectable set relativeTo (String  a_relativeTo) {
    _relativeTo = configureNotifiers(#relativeTo, _relativeTo, a_relativeTo);
  }
  @reflectable String  get relativeTo => _relativeTo;

  Map toMap () {
    Map map = new Map ();
    addMapValue(map, 'position', this.position);
    addMapValue(map, 'relativeTo', this.relativeTo);
    if (moreOptions != null) 
      map.addAll(moreOptions);
    return map;
  }
  
  
}

class Navigation extends OptionsObject implements ToMap {
  Map _menuItemHoverStyle;
  /**
   * CSS styles for the hover state of the individual items within the popup menu appearing by default when the export icon is clicked. The menu items are rendered in HTML. Defaults to
  menuItemHoverStyle: {
          background: '#4572A5',
          color: '#FFFFFF'
  }
   */
  @reflectable set menuItemHoverStyle (Map  a_menuItemHoverStyle) {
    _menuItemHoverStyle = configureNotifiers(#menuItemHoverStyle, _menuItemHoverStyle, a_menuItemHoverStyle);
  }
  @reflectable Map  get menuItemHoverStyle => _menuItemHoverStyle;


  Map _menuItemStyle;
  /**
   * CSS styles for the individual items within the popup menu appearing by default when the export icon is clicked. The menu items are rendered in HTML. Defaults to
  menuItemStyle: {
          padding: '0 5px',
          background: NONE,
          color: '#303030'
  }
   */
  @reflectable set menuItemStyle (Map  a_menuItemStyle) {
    _menuItemStyle = configureNotifiers(#menuItemStyle, _menuItemStyle, a_menuItemStyle);
  }
  @reflectable Map  get menuItemStyle => _menuItemStyle;


  Map _menuStyle;
  /**
   * CSS styles for the popup menu appearing by default when the export icon is clicked. This menu is rendered in HTML. Defaults to
   */
  @reflectable set menuStyle (Map  a_menuStyle) {
    _menuStyle = configureNotifiers(#menuStyle, _menuStyle, a_menuStyle);
  }
  @reflectable Map  get menuStyle => _menuStyle;

  Map toMap () {
    Map map = new Map ();
    addMapValue(map, 'menuItemHoverStyle', this.menuItemHoverStyle);
    addMapValue(map, 'menuItemStyle', this.menuItemStyle);
    addMapValue(map, 'menuStyle', this.menuStyle);
    if (moreOptions != null) {
      map.addAll(moreOptions);
    }
    return map;
  }
  
}

class Loading extends OptionsObject implements ToMap {
  int _hideDuration;
  /**
   * Description of the
  field
   */
  @reflectable set hideDuration (int  a_hideDuration) {
    _hideDuration = configureNotifiers(#hideDuration, _hideDuration, a_hideDuration);
  }
  @reflectable int  get hideDuration => _hideDuration;

  
  Map _labelStyle;
  /**
   * Description of the
  field
   */
  @reflectable set labelStyle (Map  a_labelStyle) {
    _labelStyle = configureNotifiers(#labelStyle, _labelStyle, a_labelStyle);
  }
  @reflectable Map  get labelStyle => _labelStyle;

  
  int _showDuration;
  /**
   * Description of the
  field
   */
  @reflectable set showDuration (int  a_showDuration) {
    _showDuration = configureNotifiers(#showDuration, _showDuration, a_showDuration);
  }
  @reflectable int  get showDuration => _showDuration;

  
  Map _style;
  /**
   * Description of the
  field
   */
  @reflectable set style (Map  a_style) {
    _style = configureNotifiers(#style, _style, a_style);
  }
  @reflectable Map  get style => _style;

  Map toMap () {
    Map map = new Map ();
    addMapValue(map, 'hideDuration', this.hideDuration);
    addMapValue(map, 'labelStyle', this.labelStyle);
    addMapValue(map, 'showDuration', this.showDuration);
    addMapValue(map, 'style', this.style);
    if (moreOptions != null) {
      map.addAll(moreOptions);
    }
    return map;
  }
  
}

class Legend extends OptionsObject implements ToMap {
  String _align;
  /**
   * The horizontal alignment of the legend box within the chart area. Valid values are "left", "center" and "right". Defaults to center
   **/
  @reflectable set align (String a_align) {
    _align = configureNotifiers(#align, _align, a_align);
  }
  @reflectable String get align => _align;
  
  String _backgroundColor;
  /**
   * The background color of the legend, filling the rounded corner border.
   * */
  @reflectable set backgroundColor (String a_backgroundColor) {
    _backgroundColor = configureNotifiers(#backgroundColor, _backgroundColor, a_backgroundColor);
  }
  @reflectable String get backgroundColor => _backgroundColor;
  
  String _borderColor;
  /**
   * The color of the drawn border around the legend. Defaults to #909090.
   */
  @reflectable set borderColor (String a_borderColor) {
    _borderColor = configureNotifiers(#borderColor, _borderColor, a_borderColor);
  }
  @reflectable String get borderColor => _borderColor;
  
  int _borderRadius;
  /**
   * The border corner radius of the legend. Defaults to 0.
   */
  @reflectable set borderRadius (int a_borderRadius) {
    _borderRadius = configureNotifiers(#borderRadius, _borderRadius, a_borderRadius);
  }
  @reflectable int get borderRadius => _borderRadius;
  
  int _borderWidth;
  /**
   * The width of the drawn border around the legend. Defaults to 0.
   */
  @reflectable set borderWidth (int a_borderWidth) {
    _borderWidth = configureNotifiers(#borderWidth, _borderWidth, a_borderWidth);
  }
  @reflectable int get borderWidth => _borderWidth;
  
  bool _enabled;
  /**
   * Enable or disable the legend. Defaults to true.
   */
  @reflectable set enabled (bool a_enabled) {
    _enabled = configureNotifiers(#enabled, _enabled, a_enabled);
  }
  @reflectable bool get enabled => _enabled;
  
  bool _floating;
  /**
   * When the legend is floating, the plot area ignores it and is allowed to be placed below it. Defaults to false.
   */
  @reflectable set floating (bool a_floating) {
    _floating = configureNotifiers(#floating, _floating, a_floating);
  }
  @reflectable bool get floating => _floating;
  
  int _itemDistance;
  /**
   * In a legend with horizontal layout, the itemDistance defines the pixel distance between each item. Defaults to 20.
   */
  @reflectable set itemDistance (int a_itemDistance) {
    _itemDistance = configureNotifiers(#itemDistance, _itemDistance, a_itemDistance);
  }
  @reflectable int get itemDistance => _itemDistance;
  
  Map _itemHiddenStyle;
  /**
   * CSS styles for each legend item when the corresponding series or point is hidden. Only a subset of CSS is supported, notably those options related to text. Properties are inherited from style unless overridden here. Defaults to:
   *  itemHiddenStyle: {
   *     color: '#CCC'
   *  }
   */
  @reflectable set itemHiddenStyle (Map a_itemHiddenStyle) {
    _itemHiddenStyle = configureNotifiers(#itemHiddenStyle, _itemHiddenStyle, a_itemHiddenStyle);
  }
  @reflectable Map get itemHiddenStyle => _itemHiddenStyle;
  
  Map _itemHoverStyle;
  /**
   * CSS styles for each legend item in hover mode. Only a subset of CSS is supported, notably those options related to text. Properties are inherited from style unless overridden here. Defaults to:
   *   itemHoverStyle: {
   *     color: '#000'
   *   }
   */
  @reflectable set itemHoverStyle (Map a_itemHoverStyle) {
    _itemHoverStyle = configureNotifiers(#itemHoverStyle, _itemHoverStyle, a_itemHoverStyle);
  }
  @reflectable Map get itemHoverStyle => _itemHoverStyle;
  
  int _itemMarginBottom;
  /**
   * The pixel bottom margin for each legend item. Defaults to 0.
   */
  @reflectable set itemMarginBottom (int a_itemMarginBottom) {
    _itemMarginBottom = configureNotifiers(#itemMarginBottom, _itemMarginBottom, a_itemMarginBottom);
  }
  @reflectable int get itemMarginBottom => _itemMarginBottom;
  
  int _itemMarginTop;
  /**
   * The pixel top margin for each legend item. Defaults to 0.
   */
  @reflectable set itemMarginTop (int a_itemMarginTop) {
    _itemMarginTop = configureNotifiers(#itemMarginTop, _itemMarginTop, a_itemMarginTop);
  }
  @reflectable int get itemMarginTop => _itemMarginTop;
  
  Map _itemStyle;
  /**
   * CSS styles for each legend item. Only a subset of CSS is supported, notably those options related to text. Defaults to { "color": "#333333", "cursor": "pointer", "fontSize": "12px", "fontWeight": "bold" }.
   */
  @reflectable set itemStyle (Map a_itemStyle) {
    _itemStyle = configureNotifiers(#itemStyle, _itemStyle, a_itemStyle);
  }
  @reflectable Map get itemStyle => _itemStyle;
  
  int _itemWidth;
  /**
   * The width for each legend item. This is useful in a horizontal layout with many items when you want the items to align vertically. .
   */
  @reflectable set itemWidth (int a_itemWidth) {
    _itemWidth = configureNotifiers(#itemWidth, _itemWidth, a_itemWidth);
  }
  @reflectable int get itemWidth => _itemWidth;
  
  String _labelFormat;
  /**
   * A format string for each legend label. Available variables relates to properties on the series, or the point in case of pies. Defaults to {name}.
   */
  @reflectable set labelFormat (String a_labelFormat) {
    _labelFormat = configureNotifiers(#labelFormat, _labelFormat, a_labelFormat);
  }
  @reflectable String get labelFormat => _labelFormat;
  
  Function _labelFormatter;
  /**
   * Callback function to format each of the series' labels. The this keyword refers to the series object, or the point object in case of pie charts. By default the series or point name is printed.
   */
  @reflectable set labelFormatter (Function a_labelFormatter) {
    _labelFormatter = configureNotifiers(#labelFormatter, _labelFormatter, a_labelFormatter);
  }
  @reflectable Function get labelFormatter => _labelFormatter;
  
  
  String _layout;
  /**
   * The layout of the legend items. Can be one of "horizontal" or "vertical". Defaults to horizontal.
   */
  @reflectable set layout (String a_layout) {
    _layout = configureNotifiers(#layout, _layout, a_layout);
  }
  @reflectable String get layout => _layout;
  
  int _lineHeight;
  /**
   * Line height for the legend items. Deprecated as of 2.1. Instead, the line height for each item can be set using itemStyle.lineHeight, and the padding between items using itemMarginTop and itemMarginBottom. Defaults to 16.
   */
  @reflectable set lineHeight (int a_lineHeight) {
    _lineHeight = configureNotifiers(#lineHeight, _lineHeight, a_lineHeight);
  }
  @reflectable int get lineHeight => _lineHeight;
  
  int _margin;
  /**
   * If the plot area sized is calculated automatically and the legend is not floating, the legend margin is the space between the legend and the axis labels or plot area. Defaults to 15.
   */
  @reflectable set margin (int a_margin) {
    _margin = configureNotifiers(#margin, _margin, a_margin);
  }
  @reflectable int get margin => _margin;
  
  int _maxHeight;
  /**
   * Maximum pixel height for the legend. When the maximum height is extended, navigation will show.
  */
  @reflectable set maxHeight (int a_maxHeight) {
    _maxHeight = configureNotifiers(#maxHeight, _maxHeight, a_maxHeight);
  }
  @reflectable int get maxHeight => _maxHeight;
  
  Map _navigation;
  /**
   * Options for the paging or navigation appearing when the legend is overflown. When legend.useHTML is enabled, navigation is disabled.
  */
  @reflectable set navigation (Map a_navigation) {
    _navigation = configureNotifiers(#navigation, _navigation, a_navigation);
  }
  @reflectable Map get navigation => _navigation;
  
  int _padding;
  /**
   * The inner padding of the legend box. Defaults to 0;
   */
  @reflectable set padding (int a_padding) {
    _padding = configureNotifiers(#padding, _padding, a_padding);
  }
  @reflectable int get padding => _padding;
  
  bool _reversed;
  /**
   * Whether to reverse the order of the legend items compared to the order of the series or points as defined in the configuration object. Defaults to false.
   */
  @reflectable set reversed (bool a_reversed) {
    _reversed = configureNotifiers(#reversed, _reversed, a_reversed);
  }
  @reflectable bool get reversed => _reversed;
  
  bool _rtl;
  /**
   * Whether to show the symbol on the right side of the text rather than the left side. This is common in Arabic and Hebraic. Defaults to false.
   */
  @reflectable set rtl (bool a_rtl) {
    _rtl = configureNotifiers(#rtl, _rtl, a_rtl);
  }
  @reflectable bool get rtl => _rtl;
  
  var _shadow;
  /**
   * Whether to apply a drop shadow to the legend. A backgroundColor also needs to be applied for this to take effect. Since 2.3 the shadow can be an object configuration containing color, offsetX, offsetY, opacity and width. Defaults to false.
   */
  @reflectable set shadow (dynamic a_shadow) {
    _shadow = configureNotifiers(#shadow, _shadow, a_shadow);
  }
  @reflectable dynamic get shadow => _shadow;
  
  int _symbolHeight;
  /**
   * The pixel height of the symbol for series types that use a rectangle in the legend. Defaults to 12.
  */
  @reflectable set symbolHeight (int a_symbolHeight) {
    _symbolHeight = configureNotifiers(#symbolHeight, _symbolHeight, a_symbolHeight);
  }
  @reflectable int get symbolHeight => _symbolHeight;
  
  int _symbolPadding;
  /**
   * The pixel padding between the legend item symbol and the legend item text. Defaults to 5.
   */
  @reflectable set symbolPadding (int a_symbolPadding) {
    _symbolPadding = configureNotifiers(#symbolPadding, _symbolPadding, a_symbolPadding);
  }
  @reflectable int get symbolPadding => _symbolPadding;
  
  int _symbolRadius;
  /**
   * The border radius of the symbol for series types that use a rectangle in the legend. Defaults to 2.
   */
  @reflectable set symbolRadius (int a_symbolRadius) {
    _symbolRadius = configureNotifiers(#symbolRadius, _symbolRadius, a_symbolRadius);
  }
  @reflectable int get symbolRadius => _symbolRadius;
  
  int _symbolWidth;
  /**
   * The pixel width of the legend item symbol. Defaults to 16.
   */
  @reflectable set symbolWidth (int a_symbolWidth) {
    _symbolWidth = configureNotifiers(#symbolWidth, _symbolWidth, a_symbolWidth);
  }
  @reflectable int get symbolWidth => _symbolWidth;
  
  Map _title;
  /**
   * A title to be added on top of the legend.
   */
  @reflectable set title (Map a_title) {
    _title = configureNotifiers(#title, _title, a_title);
  }
  @reflectable Map get title => _title;
  
  bool _useHTML;
  /**
   * Whether to use HTML to render the legend item texts. When using HTML, legend.navigation is disabled.
   */
  @reflectable set useHTML (bool a_useHTML) {
    _useHTML = configureNotifiers(#useHTML, _useHTML, a_useHTML);
  }
  @reflectable bool get useHTML => _useHTML;
  
  String _verticalAlign;
  /**
   * The vertical alignment of the legend box. Can be one of "top", "middle" or "bottom". Vertical position can be further determined by the y option. Defaults to bottom.
   */
  @reflectable set verticalAlign (String a_verticalAlign) {
    _verticalAlign = configureNotifiers(#verticalAlign, _verticalAlign, a_verticalAlign);
  }
  @reflectable String get verticalAlign => _verticalAlign;
  
  int _width;
  /**
   * The width of the legend box.
   */
  @reflectable set width (int a_width) {
    _width = configureNotifiers(#width, _width, a_width);
  }
  @reflectable int get width => _width;
  
  int _x;
  /**
   * The x offset of the legend relative to it's horizontal alignment align within chart.spacingLeft and chart.spacingRight. Negative x moves it to the left, positive x moves it to the right. Defaults to 0.
   */
  @reflectable set x (int a_x) {
    _x = configureNotifiers(#x, _x, a_x);
  }
  @reflectable int get x => _x;
  
  
  int _y;
  /**
   * The vertical offset of the legend relative to it's vertical alignment verticalAlign within chart.spacingTop and chart.spacingBottom. Negative y moves it up, positive y moves it down. Defaults to 0.
   */
  @reflectable set y (int a_y) {
    _y = configureNotifiers(#y, _y, a_y);
  }
  @reflectable int get y => _y;
  
  Map toMap () {
    Map map = new Map ();
    addMapValue(map, 'align', this.align);
    addMapValue(map, 'backgroundColor', this.backgroundColor);
    addMapValue(map, 'borderColor', this.borderColor);
    addMapValue(map, 'borderRadius', this.borderRadius);
    addMapValue(map, 'borderWidth', this.borderWidth);
    addMapValue(map, 'enabled', this.enabled);
    addMapValue(map, 'floating', this.floating);
    addMapValue(map, 'itemDistance', this.itemDistance);
    addMapValue(map, 'itemHiddenStyle', this.itemHiddenStyle);
    addMapValue(map, 'itemHoverStyle', this.itemHoverStyle);
    addMapValue(map, 'itemMarginBottom', this.itemMarginBottom);
    addMapValue(map, 'itemMarginTop', this.itemMarginTop);
    addMapValue(map, 'itemStyle', this.itemStyle);
    addMapValue(map, 'itemWidth', this.itemWidth);
    addMapValue(map, 'labelFormat', this.labelFormat);
    addMapValue(map, 'labelFormatter', this.labelFormatter);
    addMapValue(map, 'layout', this.layout);
    addMapValue(map, 'lineHeight', this.lineHeight);
    addMapValue(map, 'margin', this.margin);
    addMapValue(map, 'maxHeight', this.maxHeight);
    addMapValue(map, 'navigation', this.navigation);
    addMapValue(map, 'padding', this.padding);
    addMapValue(map, 'reversed', this.reversed);
    addMapValue(map, 'rtl', this.rtl);
    addMapValue(map, 'shadow', this.shadow);
    addMapValue(map, 'symbolHeight', this.symbolHeight);
    addMapValue(map, 'symbolPadding', this.symbolPadding);
    addMapValue(map, 'symbolRadius', this.symbolRadius);
    addMapValue(map, 'symbolWidth', this.symbolWidth);
    addMapValue(map, 'title', this.title);
    addMapValue(map, 'useHTML', this.useHTML);
    addMapValue(map, 'verticalAlign', this.verticalAlign);
    addMapValue(map, 'width', this.width);
    addMapValue(map, 'x', this.x);
    addMapValue(map, 'y', this.y);
    if (moreOptions != null) {
      map.addAll(moreOptions);
    }
    return map;
  }
  
}

class Tooltip extends OptionsObject  implements ToMap {
  bool _animation;
  /**
   * Enable or disable animation of the tooltip. In slow legacy IE browsers the animation is disabled by default. Defaults to true.
   */
  @reflectable set animation (bool a_animation) {
    _animation = configureNotifiers(#animation, _animation, a_animation);
  }
  @reflectable bool get animation => _animation;
  
  String _backgroundColor;
  /**
   * The background color or gradient for the tooltip. Defaults to rgba(255, 255, 255, 0.85).
   */
  @reflectable set backgroundColor (String a_backgroundColor) {
    _backgroundColor = configureNotifiers(#backgroundColor, _backgroundColor, a_backgroundColor);
  }
  @reflectable String get backgroundColor => _backgroundColor;
  
  String _borderColor;
  /**
   * The color of the tooltip border. When null, the border takes the color of the corresponding series or point. Defaults to auto.
   */
  @reflectable set borderColor (String a_borderColor) {
    _borderColor = configureNotifiers(#borderColor, _borderColor, a_borderColor);
  }
  @reflectable String get borderColor => _borderColor;
  
  int _borderRadius;
  /**
   * The radius of the rounded border corners. Defaults to 3.
   */
  @reflectable set borderRadius (int a_borderRadius) {
    _borderRadius = configureNotifiers(#borderRadius, _borderRadius, a_borderRadius);
  }
  @reflectable int get borderRadius => _borderRadius;
  
  int _borderWidth;
  /**
   * The pixel width of the tooltip border. Defaults to 1.
   */
  @reflectable set borderWidth (int a_borderWidth) {
    _borderWidth = configureNotifiers(#borderWidth, _borderWidth, a_borderWidth);
  }
  @reflectable int get borderWidth => _borderWidth;
  
  var _crosshairs;
  /**
   * Display crosshairs to connect the points with their corresponding axis values. The crosshairs can be defined as a boolean, an array of booleans or an object.
   * Boolean
   * If the crosshairs option is true, a single crosshair relating to the x axis will be shown.
   * Array of booleans
   * In an array of booleans, the first value turns on the x axis crosshair and the second value to the y axis crosshair. Use [true, true] to show complete crosshairs.
   * Array of objects
   * In an array of objects, the first value applies to the x axis crosshair and the second value to the y axis crosshair. For each dimension, a width, color, dashStyle and zIndex can be given.
   * Defaults to null.
   */
  @reflectable set crosshairs (dynamic a_crosshairs) {
    _crosshairs = configureNotifiers(#crosshairs, _crosshairs, a_crosshairs);
  }
  @reflectable get crosshairs => _crosshairs;
  
  /**
   * For series on a datetime axes, the date format in the tooltip's header will by default be guessed based on the closest data points. This member gives the default string representations used for each unit. For an overview of the replacement codes, see dateFormat.
   *  Defaults to:
   *  
   *  {
   *      millisecond:"%A, %b %e, %H:%M:%S.%L",
   *      second:"%A, %b %e, %H:%M:%S",
   *      minute:"%A, %b %e, %H:%M",
   *      hour:"%A, %b %e, %H:%M",
   *      day:"%A, %b %e, %Y",
   *      week:"Week from %A, %b %e, %Y",
   *      month:"%B %Y",
   *      year:"%Y"
   *  }
   */
  @observable Map dateTimeLabelFormats;
  
  bool _enabled;
  /**
   * Enable or disable the tooltip. Defaults to true.
   */
  @reflectable set enabled (bool a_enabled) {
    _enabled = configureNotifiers(#enabled, _enabled, a_enabled);
  }
  @reflectable bool get enabled => _enabled;
  
  bool _followPointer;
  /**
   * Whether the tooltip should follow the mouse as it moves across columns, pie slices and other point types with an extent. By default it behaves this way for scatter, bubble and pie series by override in the plotOptions for those series types.
   * For touch moves to behave the same way, followTouchMove must be true also.
   * Defaults to false.
   */
  @reflectable set followPointer (bool a_followPointer) {
    _followPointer = configureNotifiers(#followPointer, _followPointer, a_followPointer);
  }
  @reflectable bool get followPointer => _followPointer;
  
  bool _followTouchMove;
  /**
   * Whether the tooltip should follow the finger as it moves on a touch device. The default value of false causes a touch move to scroll the web page, as is default behaviour on touch devices. Setting it to true may cause the user to be trapped inside the chart and unable to scroll away, so it should be used with care. If chart.zoomType is set, it will override followTouchMove Defaults to false.
   */
  @reflectable set followTouchMove (bool a_followTouchMove) {
    _followTouchMove = configureNotifiers(#followTouchMove, _followTouchMove, a_followTouchMove);
  }
  @reflectable bool get followTouchMove => _followTouchMove;
  
  String _footerFormat;
  /**
   * A string to append to the tooltip format. Defaults to false.
   */
  @reflectable set footerFormat (String a_footerFormat) {
    _footerFormat = configureNotifiers(#footerFormat, _footerFormat, a_footerFormat);
  }
  @reflectable String get footerFormat => _footerFormat;
  
  Function _formatter;
  /**
   * Callback function to format the text of the tooltip. Return false to disable tooltip for a specific point on series.
   * A subset of HTML is supported. The HTML of the tooltip is parsed and converted to SVG, therefore this isn't a complete HTML renderer. The following tabs are supported: <b>, <strong>, <i>, <em>, <br/>, <span>. Spans can be styled with a style attribute, but only text-related CSS that is shared with SVG is handled.
   * Since version 2.1 the tooltip can be shared between multiple series through the shared option. The available data in the formatter differ a bit depending on whether the tooltip is shared or not. In a shared tooltip, all properties except x, which is common for all points, are kept in an array, this.points.
   * Available data are:
   * 
   * this.percentage (not shared) / this.points[i].percentage (shared)
   *   Stacked series and pies only. The point's percentage of the total.
   * this.point (not shared) / this.points[i].point (shared)
   *   The point object. The point name, if defined, is available through this.point.name.
   * this.points
   *   In a shared tooltip, this is an array containing all other properties for each point.
   * this.series (not shared) / this.points[i].series (shared)
   *   The series object. The series name is available through this.series.name.
   * this.total (not shared) / this.points[i].total (shared)
   *   Stacked series only. The total value at this point's x value.
   * this.x
   *   The x value. This property is the same regardless of the tooltip being shared or not.
   * this.y (not shared) / this.points[i].y (shared)
   *   The y value.
   */
  @reflectable void set formatter (Function f) {
    notifyPropertyChange(#formatter, _formatter, f);
  }
  @reflectable Function get formatter => _formatter;
  
  String _headerFormat;
  /**
   * The HTML of the tooltip header line. Variables are enclosed by curly brackets. Available variables  are point.key, series.name, series.color and other members from the point and series objects. The point.key variable contains the category name, x value or datetime string depending on the type of axis. For datetime axes, the point.key date format can be set using tooltip.xDateFormat.
   * Defaults to <span style="font-size: 10px">{point.key}</span><br/>
   */
  @reflectable set headerFormat (String a_headerFormat) {
    _headerFormat = configureNotifiers(#headerFormat, _headerFormat, a_headerFormat);
  }
  @reflectable String get headerFormat => _headerFormat;
  
  int _hideDelay;
  /**
   * The number of milliseconds to wait until the tooltip is hidden when mouse out from a point or chart. Defaults to 500.
   */
  @reflectable set hideDelay (int a_hideDelay) {
    _hideDelay = configureNotifiers(#hideDelay, _hideDelay, a_hideDelay);
  }
  @reflectable int get hideDelay => _hideDelay;
  
  String _pointFormat;
  /**
   * The HTML of the point's line in the tooltip. Variables are enclosed by curly brackets. Available variables are point.x, point.y, series.name and series.color and other properties on the same form. Furthermore, point.y can be extended by the tooltip.yPrefix and tooltip.ySuffix variables. This can also be overridden for each series, which makes it a good hook for displaying units.
   * Defaults to <span style="color:{series.color}">\u25CF</span> {series.name}: <b>{point.y}</b><br/>.
   */
  @reflectable set pointFormat (String a_pointFormat) {
    _pointFormat = configureNotifiers(#pointFormat, _pointFormat, a_pointFormat);
  }
  @reflectable String get pointFormat => _pointFormat;
  
  Function _positioner;
  /**
   * A callback function to place the tooltip in a default position. The callback receives three parameters: labelWidth, labelHeight and point, where point contains values for plotX and plotY telling where the reference point is in the plot area. Add chart.plotLeft and chart.plotTop to get the full coordinates.
   * The return should be an object containing x and y values, for example { x: 100, y: 100 }.
   */
  void set positioner (Function f) {
    _positioner = notifyPropertyChange(#positioner,  _positioner,  f);
  }
  Function get positioner => _positioner;
  
  bool _shadow;
  /**
   * Whether to apply a drop shadow to the tooltip. Defaults to true.
   */
  @reflectable set shadow (bool a_shadow) {
    _shadow = configureNotifiers(#shadow, _shadow, a_shadow);
  }
  @reflectable bool get shadow => _shadow;
  
  String _shape;
  /**
   * The name of a symbol to use for the border around the tooltip. In Highcharts 3.x and less, the shape was square. Defaults to callout.
   */
  @reflectable set shape (String a_shape) {
    _shape = configureNotifiers(#shape, _shape, a_shape);
  }
  @reflectable String get shape => _shape;
  
  bool _shared;
  /**
   * When the tooltip is shared, the entire plot area will capture mouse movement. Tooltip texts for series types with ordered data (not pie, scatter, flags etc) will be shown in a single bubble. This is recommended for single series charts and for tablet/mobile optimized charts. Defaults to false.
   */
  @reflectable set shared (bool a_shared) {
    _shared = configureNotifiers(#shared, _shared, a_shared);
  }
  @reflectable bool get shared => _shared;
  
  int _snap;
  /**
   * Proximity snap for graphs or single points. Does not apply to bars, columns and pie slices. It defaults to 10 for mouse-powered devices and 25 for touch devices.
   */
  @reflectable set snap (int a_snap) {
    _snap = configureNotifiers(#snap, _snap, a_snap);
  }
  @reflectable int get snap => _snap;
  
  Map _style;
  /**
   * CSS styles for the tooltip. The tooltip can also be styled through the CSS class .highcharts-tooltip. Default value:
   */
  @reflectable set style (Map a_style) {
    _style = configureNotifiers(#style, _style, a_style);
  }
  @reflectable Map get style => _style;
  
  bool _useHTML;
  /**
   * Use HTML to render the contents of the tooltip instead of SVG. Using HTML allows advanced formatting like tables and images in the tooltip. It is also recommended for rtl languages as it works around rtl bugs in early Firefox. Defaults to false.
   */
  @reflectable set useHTML (bool a_useHTML) {
    _useHTML = configureNotifiers(#useHTML, _useHTML, a_useHTML);
  }
  @reflectable bool get useHTML => _useHTML;
  
  int _valueDecimals;
  /**
   * How many decimals to show in each series' y value. This is overridable in each series' tooltip options object. The default is to preserve all decimals.
   */
  @reflectable set valueDecimals (int a_valueDecimals) {
    _valueDecimals = configureNotifiers(#valueDecimals, _valueDecimals, a_valueDecimals);
  }
  @reflectable int get valueDecimals => _valueDecimals;
  
  String _valuePrefix;
  /**
   * A string to prepend to each series' y value. Overridable in each series' tooltip options object.
   */
  @reflectable set valuePrefix (String a_valuePrefix) {
    _valuePrefix = configureNotifiers(#valuePrefix, _valuePrefix, a_valuePrefix);
  }
  @reflectable String get valuePrefix => _valuePrefix;
  
  String _valueSuffix;
  /**
   * A string to append to each series' y value. Overridable in each series' tooltip options object.
   */
  @reflectable set valueSuffix (String a_valueSuffix) {
    _valueSuffix = configureNotifiers(#valueSuffix, _valueSuffix, a_valueSuffix);
  }
  @reflectable String get valueSuffix => _valueSuffix;
  
  String _xDateFormat;
  /**
   * The format for the date in the tooltip header if the X axis is a datetime axis. The default is a best guess based on the smallest distance between points in the chart.
   */
  @reflectable set xDateFormat (String a_xDateFormat) {
    _xDateFormat = configureNotifiers(#xDateFormat, _xDateFormat, a_xDateFormat);
  }
  @reflectable String get xDateFormat => _xDateFormat;
  
  
  Map toMap () {
    Map map = new Map ();
    addMapValue(map, 'animation', this.animation);
    addMapValue(map, 'backgroundColor', this.backgroundColor);
    addMapValue(map, 'borderColor', this.borderColor);
    addMapValue(map, 'borderRadius', this.borderRadius);
    addMapValue(map, 'borderWidth', this.borderWidth);
    addMapValue(map, 'crosshairs', this.crosshairs);
    addMapValue(map, 'dateTimeLabelFormats', this.dateTimeLabelFormats);
    addMapValue(map, 'enabled', this.enabled);
    addMapValue(map, 'followPointer', this.followPointer);
    addMapValue(map, 'followTouchMove', this.followTouchMove);
    addMapValue(map, 'footerFormat', this.footerFormat);
    addMapValue(map, 'formatter', this.formatter);
    addMapValue(map, 'headerFormat', this.headerFormat);
    addMapValue(map, 'hideDelay', this.hideDelay);
    addMapValue(map, 'pointFormat', this.pointFormat);
    addMapValue(map, 'positioner', this.positioner);
    addMapValue(map, 'shadow', this.shadow);
    addMapValue(map, 'shape', this.shape);
    addMapValue(map, 'shared', this.shared);
    addMapValue(map, 'snap', this.snap);
    addMapValue(map, 'style', this.style);
    addMapValue(map, 'useHTML', this.useHTML);
    addMapValue(map, 'valueDecimals', this.valueDecimals);
    addMapValue(map, 'valuePrefix', this.valuePrefix);
    addMapValue(map, 'valueSuffix', this.valueSuffix);
    addMapValue(map, 'xDateFormat', this.xDateFormat);
    if (moreOptions != null) {
      map.addAll(moreOptions);
    }
    return map;
  }
}


class Title extends OptionsObject  implements ToMap {
  String _align/* = "center"*/;
  /**
   * The horizontal alignment of the title. Can be one of "left", "center" and "right". Defaults to center.
   */
  @reflectable set align (String a_align) {
    _align = configureNotifiers(#align, _align, a_align);
  }
  @reflectable String get align => _align;
  
  
  bool _floating;
  /**
   * When the title is floating, the plot area will not move to make space for it. Defaults to false.
   */
  @reflectable set floating (bool a_floating) {
    _floating = configureNotifiers(#floating, _floating, a_floating);
  }
  @reflectable bool get floating => _floating;

  int _margin/* = 15*/;  
  /**
   * The margin between the title and the plot area, or if a subtitle is present, the margin between the subtitle and the plot area. Defaults to 15.
   */
  @reflectable set margin (int a_margin) {
    _margin = configureNotifiers(#margin, _margin, a_margin);
  }
  @reflectable int get margin => _margin;
  
  
  Map _style;
  /**
   * CSS styles for the title. Use this for font styling, but use align, x and yfor text alignment. Defaults to { "color": "#333333", "fontSize": "18px" }.
   */
  @reflectable set style (Map a_style) {
    _style = configureNotifiers(#style, _style, a_style);
  }
  @reflectable Map get style => _style;
  
  String _text/* = "Chart title"*/;
  /**
   * The title of the chart. To disable the title, set the text to null. Defaults to Chart title.
   */
  @reflectable set text (String a_text) {
    /*_text = configureNotifiers(#text, _text, a_text);*/
    _text = notifyPropertyChange (#text, _text, a_text);
  }
  @reflectable String get text => _text;
  
  bool _useHTML/* = false*/;
  /**
   * Whether to use HTML to render the text. Defaults to false.
   */
  @reflectable set useHTML (bool a_useHTML) {
    _useHTML = configureNotifiers(#useHTML, _useHTML, a_useHTML);
  }
  @reflectable bool get useHTML => _useHTML;
  
  String _verticalAlign;
  /**
   * The vertical alignment of the title. Can be one of "top", "middle" and "bottom". When a value is given, the title behaves as floating. Defaults to .
   */
  @reflectable set verticalAlign (String a_verticalAlign) {
    _verticalAlign = configureNotifiers(#verticalAlign, _verticalAlign, a_verticalAlign);
  }
  @reflectable String get verticalAlign => _verticalAlign;
  
  int _x/* = 0*/;
  /**
   * The x position of the title relative to the alignment within chart.spacingLeft and chart.spacingRight. Defaults to 0.
   */
  @reflectable set x (int a_x) {
    _x = configureNotifiers(#x, _x, a_x);
  }
  @reflectable int get x => _x;
  
  int _y/* = 15*/;
  /**
   * The y position of the title relative to the alignment within chart.spacingTop and chart.spacingBottom. Defaults to 15.
   */
  @reflectable set y (int a_y) {
    _y = configureNotifiers(#y, _y, a_y);
  }
  @reflectable int get y => _y;
  
  Map toMap () {
    Map map = new Map ();
    addMapValue(map, 'align', this.align);
    addMapValue(map, 'floating', this.floating);
    addMapValue(map, 'margin', this.margin);
    addMapValue(map, 'style', this.style);
    addMapValue(map, 'text', this.text);
    addMapValue(map, 'useHTML', this.useHTML);
    addMapValue(map, 'verticalAlign', this.verticalAlign);
    addMapValue(map, 'x', this.x);
    addMapValue(map, 'y', this.y);
    if (moreOptions != null) {
      map.addAll(moreOptions);
    }
    return map;
  }
  
}

class Subtitle extends Title implements ToMap {
  Map toMap () {
    return super.toMap();
  }
}

class XAxis extends OptionsObject  implements ToMap {
  bool _allowDecimals;
  /**
   * Whether to allow decimals in this axis' ticks. When counting integers, like persons or hits on a web page, decimals must be avoided in the axis tick labels. Defaults to true.
   */
  @reflectable set allowDecimals (bool a_allowDecimals) {
    _allowDecimals = configureNotifiers(#allowDecimals, _allowDecimals, a_allowDecimals);
  }
  @reflectable bool get allowDecimals => _allowDecimals;
  
  String _alternateGridColor;
  /**
   * When using an alternate grid color, a band is painted across the plot area between every other grid line.
   */
  @reflectable set alternateGridColor (String a_alternateGridColor) {
    _alternateGridColor = configureNotifiers(#alternateGridColor, _alternateGridColor, a_alternateGridColor);
  }
  @reflectable String get alternateGridColor => _alternateGridColor;
  
  List<String> _categories;
  /**
   * If categories are present for the xAxis, names are used instead of numbers for that axis. Since Highcharts 3.0, categories can also be extracted by giving each point a name and setting axis type to "category".
   * Example:
   * categories: ['Apples', 'Bananas', 'Oranges']
   * Defaults to null
   */
  @reflectable set categories (List<String> a_categories) {
    _categories = configureNotifiers(#categories, _categories, a_categories);
  }
  @reflectable List<String> get categories => _categories;
  
  
  num _ceiling;
  /**
   * The highest allowed value for automatically computed axis extremes.
   */
  @reflectable set ceiling (num a_ceiling) {
    _ceiling = configureNotifiers(#ceiling, _ceiling, a_ceiling);
  }
  @reflectable num get ceiling => _ceiling;
  
  Map _dateTimeLabelFormats;
  /**
   * For a datetime axis, the scale will automatically adjust to the appropriate unit. This member gives the default string representations used for each unit. For an overview of the replacement codes, see dateFormat. Defaults to:
   * 
   *  {
   *    millisecond: '%H:%M:%S.%L',
   *    second: '%H:%M:%S',
   *    minute: '%H:%M',
   *    hour: '%H:%M',
   *    day: '%e. %b',
   *    week: '%e. %b',
   *    month: '%b \'%y',
   *    year: '%Y'
   *  }
   * 
   */
  @reflectable set dateTimeLabelFormats (Map a_dateTimeLabelFormats) {
    _dateTimeLabelFormats = configureNotifiers(#dateTimeLabelFormats, _dateTimeLabelFormats, a_dateTimeLabelFormats);
  }
  @reflectable Map get dateTimeLabelFormats => _dateTimeLabelFormats;
  
  
  bool _endOnTick;
  /**
   * Whether to force the axis to end on a tick. Use this option with the maxPadding option to control the axis end. Defaults to false.
   */
  @reflectable set endOnTick (bool a_endOnTick) {
    _endOnTick = configureNotifiers(#endOnTick, _endOnTick, a_endOnTick);
  }
  @reflectable bool get endOnTick => _endOnTick;
  
  Map _events;
  /**
   * Event handlers for the axis
   */
  @reflectable set events (Map a_events) {
    _events = configureNotifiers(#events, _events, a_events);
  }
  @reflectable Map get events => _events;
  
  
  num _floor;
  /**
   * The lowest allowed value for automatically computed axis extremes. Defaults to null.
   */
  @reflectable set floor (num a_floor) {
    _floor = configureNotifiers(#floor, _floor, a_floor);
  }
  @reflectable num get floor => _floor;
  
  String _gridLineColor;
  /**
   * Color of the grid lines extending the ticks across the plot area. Defaults to #C0C0C0.
   */
  @reflectable set gridLineColor (String a_gridLineColor) {
    _gridLineColor = configureNotifiers(#gridLineColor, _gridLineColor, a_gridLineColor);
  }
  @reflectable String get gridLineColor => _gridLineColor;
  
  String _gridLineDashStyle;
  /**
   * The dash or dot style of the grid lines. For possible values, see this demonstration. Defaults to Solid.
   */
  @reflectable set gridLineDashStyle (String a_gridLineDashStyle) {
    _gridLineDashStyle = configureNotifiers(#gridLineDashStyle, _gridLineDashStyle, a_gridLineDashStyle);
  }
  @reflectable String get gridLineDashStyle => _gridLineDashStyle;
  
  num _gridLineWidth;
  /**
   * The width of the grid lines extending the ticks across the plot area. Defaults to 0.
   */
  @reflectable set gridLineWidth (num a_gridLineWidth) {
    _gridLineWidth = configureNotifiers(#gridLineWidth, _gridLineWidth, a_gridLineWidth);
  }
  @reflectable num get gridLineWidth => _gridLineWidth;
  
  
  num _gridZIndex;
  /**
   * The Z index of the grid lines. Defaults to 1.
   */
  @reflectable set gridZIndex (num a_gridZIndex) {
    _gridZIndex = configureNotifiers(#gridZIndex, _gridZIndex, a_gridZIndex);
  }
  @reflectable num get gridZIndex => _gridZIndex;
  
  
  String _id;
  /**
   * An id for the axis. This can be used after render time to get a pointer to the axis object through chart.get().
   */
  @reflectable set id (String a_id) {
    _id = configureNotifiers(#id, _id, a_id);
  }
  @reflectable String get id => _id;
  
  
  Map _labels;
  /**
   * The axis labels show the number or category for each tick.
   */
  @reflectable set labels (Map a_labels) {
    _labels = configureNotifiers(#labels, _labels, a_labels);
  }
  @reflectable Map get labels => _labels;
  
  
  String _color;
  /**
   * The color of the line marking the axis itself. Defaults to #C0D0E0.
   */
  @reflectable set color (String a_color) {
    _color = configureNotifiers(#color, _color, a_color);
  }
  @reflectable String get color => _color;
  
  
  num _lineWidth;
  /**
   * The width of the line marking the axis itself. Defaults to 1.
   */
  @reflectable set lineWidth (num a_lineWidth) {
    _lineWidth = configureNotifiers(#lineWidth, _lineWidth, a_lineWidth);
  }
  @reflectable num get lineWidth => _lineWidth;
  
  
  num _linkedTo;
  /**
   * Index of another axis that this axis is linked to. When an axis is linked to a master axis, it will take the same extremes as the master, but as assigned by min or max or by setExtremes. It can be used to show additional info, or to ease reading the chart by duplicating the scales.
   */
  @reflectable set linkedTo (num a_linkedTo) {
    _linkedTo = configureNotifiers(#linkedTo, _linkedTo, a_linkedTo);
  }
  @reflectable num get linkedTo => _linkedTo;
  
  
  num _max;
  /**
   * The maximum value of the axis. If null, the max value is automatically calculated. If the endOnTick option is true, the max value might be rounded up. The actual maximum value is also influenced by chart.alignTicks.
   */
  @reflectable set max (num a_max) {
    _max = configureNotifiers(#max, _max, a_max);
  }
  @reflectable num get max => _max;
  
  num _maxPadding;
  /**
   * Padding of the max value relative to the length of the axis. A padding of 0.05 will make a 100px axis 5px longer. This is useful when you don't want the highest data value to appear on the edge of the plot area. When the axis' max option is set or a max extreme is set using axis.setExtremes(), the maxPadding will be ignored. Defaults to 0.01.
   */
  @reflectable set maxPadding (num a_maxPadding) {
    _maxPadding = configureNotifiers(#maxPadding, _maxPadding, a_maxPadding);
  }
  @reflectable num get maxPadding => _maxPadding;
  
  
  num _min;
  /**
   * The minimum value of the axis. If null the min value is automatically calculated. If the startOnTick option is true, the min value might be rounded down.
   */
  @reflectable set min (num a_min) {
    _min = configureNotifiers(#min, _min, a_min);
  }
  @reflectable num get min => _min;
  
  
  num _minPadding;
  /**
   * Padding of the min value relative to the length of the axis. A padding of 0.05 will make a 100px axis 5px longer. This is useful when you don't want the lowest data value to appear on the edge of the plot area. When the axis' min option is set or a min extreme is set using axis.setExtremes(), the minPadding will be ignored. Defaults to 0.01.
   */
  @reflectable set minPadding (num a_minPadding) {
    _minPadding = configureNotifiers(#minPadding, _minPadding, a_minPadding);
  }
  @reflectable num get minPadding => _minPadding;
  
  
  num _minRange;
  /**
   * The minimum range to display on this axis. The entire axis will not be allowed to span over a smaller interval than this. For example, for a datetime axis the main unit is milliseconds. If minRange is set to 3600000, you can't zoom in more than to one hour.
   * The default minRange for the x axis is five times the smallest interval between any of the data points.
   * On a logarithmic axis, the unit for the minimum range is the power. So a minRange of 1 means that the axis can be zoomed to 10-100, 100-1000, 1000-10000 etc.
   */
  @reflectable set minRange (num a_minRange) {
    _minRange = configureNotifiers(#minRange, _minRange, a_minRange);
  }
  @reflectable num get minRange => _minRange;
  
  num _minTickInterval;
  /**
   * The minimum tick interval allowed in axis values. For example on zooming in on an axis with daily data, this can be used to prevent the axis from showing hours.
   */
  @reflectable set minTickInterval (num a_minTickInterval) {
    _minTickInterval = configureNotifiers(#minTickInterval, _minTickInterval, a_minTickInterval);
  }
  @reflectable num get minTickInterval => _minTickInterval;
  
  
  String _minorGridLineColor;
  /**
   * Color of the minor, secondary grid lines. Defaults to #E0E0E0.
   */
  @reflectable set minorGridLineColor (String a_minorGridLineColor) {
    _minorGridLineColor = configureNotifiers(#minorGridLineColor, _minorGridLineColor, a_minorGridLineColor);
  }
  @reflectable String get minorGridLineColor => _minorGridLineColor;
  
  
  String _minorGridLineDashStyle;
  /**
   * The dash or dot style of the minor grid lines. For possible values, see this demonstration. Defaults to Solid.
   */
  @reflectable set minorGridLineDashStyle (String a_minorGridLineDashStyle) {
    _minorGridLineDashStyle = configureNotifiers(#minorGridLineDashStyle, _minorGridLineDashStyle, a_minorGridLineDashStyle);
  }
  @reflectable String get minorGridLineDashStyle => _minorGridLineDashStyle;
  
  
  num _minorGridLineWidth;
  /**
   * Width of the minor, secondary grid lines. Defaults to 1.
   */
  @reflectable set minorGridLineWidth (num a_minorGridLineWidth) {
    _minorGridLineWidth = configureNotifiers(#minorGridLineWidth, _minorGridLineWidth, a_minorGridLineWidth);
  }
  @reflectable num get minorGridLineWidth => _minorGridLineWidth;
  
  
  String _minorTickColor;
  /**
   * Color for the minor tick marks. Defaults to #A0A0A0.
   */
  @reflectable set minorTickColor (String a_minorTickColor) {
    _minorTickColor = configureNotifiers(#minorTickColor, _minorTickColor, a_minorTickColor);
  }
  @reflectable String get minorTickColor => _minorTickColor;
  
  
  num _minorTickInterval;
  /**
   * Tick interval in scale units for the minor ticks. On a linear axis, if "auto", the minor tick interval is calculated as a fifth of the tickInterval. If null, minor ticks are not shown.
   * On logarithmic axes, the unit is the power of the value. For example, setting the minorTickInterval to 1 puts one tick on each of 0.1, 1, 10, 100 etc. Setting the minorTickInterval to 0.1 produces 9 ticks between 1 and 10, 10 and 100 etc. A minorTickInterval of "auto" on a log axis results in a best guess, attempting to enter approximately 5 minor ticks between each major tick.
   * On axes using categories, minor ticks are not supported.
   */
  @reflectable set minorTickInterval (num a_minorTickInterval) {
    _minorTickInterval = configureNotifiers(#minorTickInterval, _minorTickInterval, a_minorTickInterval);
  }
  @reflectable num get minorTickInterval => _minorTickInterval;
  
  num _minorTickLength;
  /**
   * The pixel length of the minor tick marks. Defaults to 2.
   */
  @reflectable set minorTickLength (num a_minorTickLength) {
    _minorTickLength = configureNotifiers(#minorTickLength, _minorTickLength, a_minorTickLength);
  }
  @reflectable num get minorTickLength => _minorTickLength;
  
  
  String _minorTickPosition;
  /**
   * The position of the minor tick marks relative to the axis line. Can be one of inside and outside. Defaults to outside.
   */
  @reflectable set minorTickPosition (String a_minorTickPosition) {
    _minorTickPosition = configureNotifiers(#minorTickPosition, _minorTickPosition, a_minorTickPosition);
  }
  @reflectable String get minorTickPosition => _minorTickPosition;
  
  
  num _minorTickWidth;
  /**
   * The pixel width of the minor tick mark. Defaults to 0.
   */
  @reflectable set minorTickWidth (num a_minorTickWidth) {
    _minorTickWidth = configureNotifiers(#minorTickWidth, _minorTickWidth, a_minorTickWidth);
  }
  @reflectable num get minorTickWidth => _minorTickWidth;
  
  
  int _offset;
  /**
   * The distance in pixels from the plot area to the axis line. A positive offset moves the axis with it's line, labels and ticks away from the plot area. This is typically used when two or more axes are displayed on the same side of the plot. Defaults to 0.
   */
  @reflectable set offset (int a_offset) {
    _offset = configureNotifiers(#offset, _offset, a_offset);
  }
  @reflectable int get offset => _offset;
  
  
  bool _opposite;
  /**
   * Whether to display the axis on the opposite side of the normal. The normal is on the left side for vertical axes and bottom for horizontal, so the opposite sides will be right and top respectively. This is typically used with dual or multiple axes. Defaults to false.
   */
  @reflectable set opposite (bool a_opposite) {
    _opposite = configureNotifiers(#opposite, _opposite, a_opposite);
  }
  @reflectable bool get opposite => _opposite;
  
  
  List<Map> _plotBands;
  /**
   * An array of colored bands stretching across the plot area marking an interval on the axis.
   * In a gauge, a plot band on the Y axis (value axis) will stretch along the perimiter of the gauge.
   */
  @reflectable set plotBands (List<Map> a_plotBands) {
    _plotBands = configureNotifiers(#plotBands, _plotBands, a_plotBands);
  }
  @reflectable List<Map> get plotBands => _plotBands;
  
  
  List<PlotLines> _plotLines;
  /**
   * An array of lines streching across the plot area, marking a specific value on one of the axes.
   */
  @reflectable set plotLines (List<PlotLines> a_plotLines) {
    _plotLines = configureNotifiers(#plotLines, _plotLines, a_plotLines);
  }
  @reflectable List<PlotLines> get plotLines => _plotLines;
  
  
  bool _reversed;
  /**
   * Whether to reverse the axis so that the highest number is closest to the origin. If the chart is inverted, the x axis is reversed by default. Defaults to false.
   */
  @reflectable set reversed (bool a_reversed) {
    _reversed = configureNotifiers(#reversed, _reversed, a_reversed);
  }
  @reflectable bool get reversed => _reversed;
  
  
  bool _showEmpty;
  /**
   * Whether to show the axis line and title when the axis has no data. Defaults to true.
   */
  @reflectable set showEmpty (bool a_showEmpty) {
    _showEmpty = configureNotifiers(#showEmpty, _showEmpty, a_showEmpty);
  }
  @reflectable bool get showEmpty => _showEmpty;
  
  
  bool _showFirstLabel;
  /**
   * Whether to show the first tick label. Defaults to true.
   */
  @reflectable set showFirstLabel (bool a_showFirstLabel) {
    _showFirstLabel = configureNotifiers(#showFirstLabel, _showFirstLabel, a_showFirstLabel);
  }
  @reflectable bool get showFirstLabel => _showFirstLabel;
  
  bool _showLastLabel;
  /**
   * Whether to show the last tick label. Defaults to true.
   */
  @reflectable set showLastLabel (bool a_showLastLabel) {
    _showLastLabel = configureNotifiers(#showLastLabel, _showLastLabel, a_showLastLabel);
  }
  @reflectable bool get showLastLabel => _showLastLabel;
  
  
  int _startOfWeek;
  /**
   * For datetime axes, this decides where to put the tick between weeks. 0 = Sunday, 1 = Monday. Defaults to 1.
   */
  @reflectable set startOfWeek (int a_startOfWeek) {
    _startOfWeek = configureNotifiers(#startOfWeek, _startOfWeek, a_startOfWeek);
  }
  @reflectable int get startOfWeek => _startOfWeek;
  
  
  bool _startOnTick;
  /**
   * Whether to force the axis to start on a tick. Use this option with the maxPadding option to control the axis start. Defaults to false.
   */
  @reflectable set startOnTick (bool a_startOnTick) {
    _startOnTick = configureNotifiers(#startOnTick, _startOnTick, a_startOnTick);
  }
  @reflectable bool get startOnTick => _startOnTick;
  
  
  String _tickColor;
  /**
   * Color for the main tick marks. Defaults to #C0D0E0.
   */
  @reflectable set tickColor (String a_tickColor) {
    _tickColor = configureNotifiers(#tickColor, _tickColor, a_tickColor);
  }
  @reflectable String get tickColor => _tickColor;
  
  num _tickInterval;
  /**
   * The interval of the tick marks in axis units. When null, the tick interval is computed to approximately follow the tickPixelInterval on linear and datetime axes. On categorized axes, a null tickInterval will default to 1, one category. Note that datetime axes are based on milliseconds, so for example an interval of one day is expressed as 24 * 3600 * 1000.
   * On logarithmic axes, the tickInterval is based on powers, so a tickInterval of 1 means one tick on each of 0.1, 1, 10, 100 etc. A tickInterval of 2 means a tick of 0.1, 10, 1000 etc. A tickInterval of 0.2 puts a tick on 0.1, 0.2, 0.4, 0.6, 0.8, 1, 2, 4, 6, 8, 10, 20, 40 etc.
   */
  @reflectable set tickInterval (num a_tickInterval) {
    _tickInterval = configureNotifiers(#tickInterval, _tickInterval, a_tickInterval);
  }
  @reflectable num get tickInterval => _tickInterval;
  
  
  int _tickLength;
  /**
   * The pixel length of the main tick marks. Defaults to 10. 
   */
  @reflectable set tickLength (int a_tickLength) {
    _tickLength = configureNotifiers(#tickLength, _tickLength, a_tickLength);
  }
  @reflectable int get tickLength => _tickLength;
  
  
  int _tickPixelInterval;
  /**
   * If tickInterval is null this option sets the approximate pixel interval of the tick marks. Not applicable to categorized axis. Defaults to 72 for the Y axis and 100 for the X axis.
   */
  @reflectable set tickPixelInterval (int a_tickPixelInterval) {
    _tickPixelInterval = configureNotifiers(#tickPixelInterval, _tickPixelInterval, a_tickPixelInterval);
  }
  @reflectable int get tickPixelInterval => _tickPixelInterval;
  
  
  String _tickPosition;
  /**
   * The position of the major tick marks relative to the axis line. Can be one of inside and outside. Defaults to outside.
   */
  @reflectable set tickPosition (String a_tickPosition) {
    _tickPosition = configureNotifiers(#tickPosition, _tickPosition, a_tickPosition);
  }
  @reflectable String get tickPosition => _tickPosition;
  
  Function _tickPositioner;
  /**
   * A callback function returning array defining where the ticks are laid out on the axis. This overrides the default behaviour of tickPixelInterval and tickInterval. Defaults to null.
   */
  void set tickPositioner (Function f) {
    _tickPositioner = notifyPropertyChange(#tickPositioner,  _tickPositioner,  f);
  }
  Function get tickPositioner => _tickPositioner;
  
  List<int> _tickPositions;
  /**
   * An array defining where the ticks are laid out on the axis. This overrides the default behaviour of tickPixelInterval and tickInterval. Defaults to null.
   */
  @reflectable set tickPositions (List<int> a_tickPositions) {
    _tickPositions = configureNotifiers(#tickPositions, _tickPositions, a_tickPositions);
  }
  @reflectable List<int> get tickPositions => _tickPositions;
  
  int _tickWidth;
  /**
   * The pixel width of the major tick marks. Defaults to 1.
   */
  @reflectable set tickWidth (int a_tickWidth) {
    _tickWidth = configureNotifiers(#tickWidth, _tickWidth, a_tickWidth);
  }
  @reflectable int get tickWidth => _tickWidth;
  
  
  String _tickmarkPlacement;
  /**
   * For categorized axes only. If "on" the tick mark is placed in the center of the category, if "between" the tick mark is placed between categories. Defaults to between.
   */
  @reflectable set tickmarkPlacement (String a_tickmarkPlacement) {
    _tickmarkPlacement = configureNotifiers(#tickmarkPlacement, _tickmarkPlacement, a_tickmarkPlacement);
  }
  @reflectable String get tickmarkPlacement => _tickmarkPlacement;
  
  
  AxisTitle _title;
  /**
   * The axis title, showing next to the axis line.
   */
  @reflectable set title (AxisTitle a_title) {
    _title = configureNotifiers(#title, _title, a_title);
  }
  @reflectable AxisTitle get title => _title;
  
  
  String _type;
  /**
   * The type of axis. Can be one of "linear", "logarithmic", "datetime" or "category". In a datetime axis, the numbers are given in milliseconds, and tick marks are placed on appropriate values like full hours or days. In a category axis, the point names of the chart's series are used for categories, if not a categories array is defined. Defaults to linear.
   */
  @reflectable set type (String a_type) {
    _type = configureNotifiers(#type, _type, a_type);
  }
  @reflectable String get type => _type;
  
  
  Map toMap () {
    Map map = new Map ();
    addMapValue(map, 'allowDecimals', this.allowDecimals);
    addMapValue(map, 'alternateGridColor', this.alternateGridColor);
    addMapValue(map, 'categories', this.categories);
    addMapValue(map, 'ceiling', this.ceiling);
    addMapValue(map, 'dateTimeLabelFormats', this.dateTimeLabelFormats);
    addMapValue(map, 'endOnTick', this.endOnTick);
    addMapValue(map, 'events', this.events);
    addMapValue(map, 'floor', this.floor);
    addMapValue(map, 'gridLineColor', this.gridLineColor);
    addMapValue(map, 'gridLineDashStyle', this.gridLineDashStyle);
    addMapValue(map, 'gridLineWidth', this.gridLineWidth);
    addMapValue(map, 'gridZIndex', this.gridZIndex);
    addMapValue(map, 'id', this.id);
    addMapValue(map, 'labels', this.labels);
    addMapValue(map, 'color', this.color);
    addMapValue(map, 'lineWidth', this.lineWidth);
    addMapValue(map, 'linkedTo', this.linkedTo);
    addMapValue(map, 'max', this.max);
    addMapValue(map, 'maxPadding', this.maxPadding);
    addMapValue(map, 'min', this.min);
    addMapValue(map, 'minPadding', this.minPadding);
    addMapValue(map, 'minRange', this.minRange);
    addMapValue(map, 'minTickInterval', this.minTickInterval);
    addMapValue(map, 'minorGridLineColor', this.minorGridLineColor);
    addMapValue(map, 'minorGridLineDashStyle', this.minorGridLineDashStyle);
    addMapValue(map, 'minorGridLineWidth', this.minorGridLineWidth);
    addMapValue(map, 'minorTickColor', this.minorTickColor);
    addMapValue(map, 'minorTickInterval', this.minorTickInterval);
    addMapValue(map, 'minorTickLength', this.minorTickLength);
    addMapValue(map, 'minorTickPosition', this.minorTickPosition);
    addMapValue(map, 'minorTickWidth', this.minorTickWidth);
    addMapValue(map, 'offset', this.offset);
    addMapValue(map, 'opposite', this.opposite);
    addMapValue(map, 'plotBands', this.plotBands);
    addMapValue(map, 'plotLines', this.plotLines);
    addMapValue(map, 'reversed', this.reversed);
    addMapValue(map, 'showEmpty', this.showEmpty);
    addMapValue(map, 'showFirstLabel', this.showFirstLabel);
    addMapValue(map, 'showLastLabel', this.showLastLabel);
    addMapValue(map, 'startOfWeek', this.startOfWeek);
    addMapValue(map, 'startOnTick', this.startOnTick);
    addMapValue(map, 'tickColor', this.tickColor);
    addMapValue(map, 'tickInterval', this.tickInterval);
    addMapValue(map, 'tickLength', this.tickLength);
    addMapValue(map, 'tickPixelInterval', this.tickPixelInterval);
    addMapValue(map, 'tickPosition', this.tickPosition);
    addMapValue(map, 'tickPositioner', this.tickPositioner);
    addMapValue(map, 'tickPositions', this.tickPositions);
    addMapValue(map, 'tickWidth', this.tickWidth);
    addMapValue(map, 'tickmarkPlacement', this.tickmarkPlacement);
    addMapValue(map, 'title', this.title);
    addMapValue(map, 'type', this.type);
    if (moreOptions != null) {
      map.addAll(moreOptions);
    }
    return map;
  }
}

class PlotLines extends OptionsObject  implements ToMap {
  String _color;
  /**
   * The color of the line.
   */
  @reflectable set color (String a_color) {
    _color = configureNotifiers(#color, _color, a_color);
  }
  @reflectable String get color => _color;
  
  String _dashStyle;
  /**
   * The dashing or dot style for the plot line. For possible values see <a href="http://jsfiddle.net/gh/get/jquery/1.7.1/highslide-software/highcharts.com/tree/master/samples/highcharts/plotoptions/series-dashstyle-all/">this overview</a>. Defaults to Solid.
   */
  @reflectable set dashStyle (String a_dashStyle) {
    _dashStyle = configureNotifiers(#dashStyle, _dashStyle, a_dashStyle);
  }
  @reflectable String get dashStyle => _dashStyle;
  
  
  Map _events;
  /**
   * An object defining mouse events for the plot line. Supported properties are click, mouseover, mouseout, mousemove.
   */
  @reflectable set events (Map a_events) {
    _events = configureNotifiers(#events, _events, a_events);
  }
  @reflectable Map get events => _events;
  
  
  String _id;
  /**
   * An id used for identifying the plot line in Axis.removePlotLine.
   */
  @reflectable set id (String a_id) {
    _id = configureNotifiers(#id, _id, a_id);
  }
  @reflectable String get id => _id;
  
  
  Map _label;
  /**
   * Text labels for the plot bands
   */
  @reflectable set label (Map a_label) {
    _label = configureNotifiers(#label, _label, a_label);
  }
  @reflectable Map get label => _label;
  
  
  num _value;
  /**
   * The position of the line in axis units.
   */
  @reflectable set value (num a_value) {
    _value = configureNotifiers(#value, _value, a_value);
  }
  @reflectable num get value => _value;
  
  
  int _width;
  /**
   * The width or thickness of the plot line.
   */
  @reflectable set width (int a_width) {
    _width = configureNotifiers(#width, _width, a_width);
  }
  @reflectable int get width => _width;
  
  
  int _zIndex;
  /**
   * The z index of the plot line within the chart.
   */
  @reflectable set zIndex (int a_zIndex) {
    _zIndex = configureNotifiers(#zIndex, _zIndex, a_zIndex);
  }
  @reflectable int get zIndex => _zIndex;
  
  
  Map toMap () {
    Map map = new Map ();
    addMapValue(map, 'color', this.color);
    addMapValue(map, 'dashStyle', this.dashStyle);
    addMapValue(map, 'events', this.events);
    addMapValue(map, 'id', this.id);
    addMapValue(map, 'label', this.label);
    addMapValue(map, 'value', this.value);
    addMapValue(map, 'width', this.width);
    addMapValue(map, 'zIndex', this.zIndex);
    if (moreOptions != null) {
      map.addAll(moreOptions);
    }
    return map;
  }
  
  
}

class AxisTitle extends OptionsObject  implements ToMap {
  String _align;
  /**
   * Alignment of the title relative to the axis values. Possible values are "low", "middle" or "high". Defaults to middle.
   */
  @reflectable set align (String a_align) {
    _align = configureNotifiers(#align, _align, a_align);
  }
  @reflectable String get align => _align;
  
  
  int _margin;
  /**
   * The pixel distance between the axis labels or line and the title. Defaults to 0 for horizontal axes, 10 for vertical
   */
  @reflectable set margin (int a_margin) {
    _margin = configureNotifiers(#margin, _margin, a_margin);
  }
  @reflectable int get margin => _margin;
  
  int _offset;
  /**
   * The distance of the axis title from the axis line. By default, this distance is computed from the offset width of the labels, the labels' distance from the axis and the title's margin. However when the offset option is set, it overrides all this.
   */
  @reflectable set offset (int a_offset) {
    _offset = configureNotifiers(#offset, _offset, a_offset);
  }
  @reflectable int get offset => _offset;

  
  int _rotation;
  /**
   * The rotation of the text in degrees. 0 is horizontal, 270 is vertical reading from bottom to top. Defaults to 0.
   */
  @reflectable set rotation (int a_rotation) {
    _rotation = configureNotifiers(#rotation, _rotation, a_rotation);
  }
  @reflectable int get rotation => _rotation;
  
  Map _style;
  /**
   * CSS styles for the title. When titles are rotated they are rendered using vector graphic techniques and not all styles are applicable. Defaults to { "color": "#707070", "fontWeight": "bold" }.
   */
  @reflectable set style (Map a_style) {
    _style = configureNotifiers(#style, _style, a_style);
  }
  @reflectable Map get style => _style;
  
  
  String _text;
  /**
   * The actual text of the axis title. It can contain basic HTML text markup like <b>, <i> and spans with style.
   */
  @reflectable set text (String a_text) {
    _text = configureNotifiers(#text, _text, a_text);
  }
  @reflectable String get text => _text;
  
  
  Map toMap () {
    Map map = new Map ();
    addMapValue(map, 'align',     this.align);
    addMapValue(map, 'margin',    this.margin);
    addMapValue(map, 'offset',    this.offset);
    addMapValue(map, 'rotation',  this.rotation);
    addMapValue(map, 'style',     this.style);
    addMapValue(map, 'text',      this.text);
    if (moreOptions != null) {
      map.addAll(moreOptions);
    }
    return map;
  }
  
}

class YAxis extends XAxis implements ToMap {
  String _maxColor;
  /**
   * Solid gauge only. Unless stops are set, the color to represent the maximum value of the Y axis. Defaults to #102D4C.
   */
  @reflectable set maxColor (String a_maxColor) {
    _maxColor = configureNotifiers(#maxColor, _maxColor, a_maxColor);
  }
  @reflectable String get maxColor => _maxColor;
  
  String _minColor;
  /**
   * Solid gauge only. Unless stops are set, the color to represent the minimum value of the Y axis. Defaults to #EFEFFF.
   */
  @reflectable set minColor (String a_minColor) {
    _minColor = configureNotifiers(#minColor, _minColor, a_minColor);
  }
  @reflectable String get minColor => _minColor;
  
  Map _stackLabels;
  /**
   * The stack labels show the total value for each bar in a stacked column or bar chart. The label will be placed on top of positive columns and below negative columns. In case of an inverted column chart or a bar chart the label is placed to the right of positive bars and to the left of negative bars
   */
  @reflectable set stackLabels (Map a_stackLabels) {
    _stackLabels = configureNotifiers(#stackLabels, _stackLabels, a_stackLabels);
  }
  @reflectable Map get stackLabels => _stackLabels;
  
  
  Map toMap () {
    Map map = super.toMap();
    addMapValue (map, 'maxColor', this.maxColor);
    addMapValue (map, 'minorColor', this.minColor);
    addMapValue (map, 'stackLabels', this.stackLabels);
    if (moreOptions != null) {
      map.addAll(moreOptions);
    }
    return map;
  }
  
}

class PlotOptions extends OptionsObject  implements ToMap {
  Map toMap () {
    Map map = new Map ();
    if (moreOptions != null) 
      map.addAll(moreOptions);
    return map;
  }
}

class Series extends PlotOptions implements ToMap {
  List<Point> _data;
  /**
   * An array of data points for the series. data has precedence over numData
   */
  @reflectable set data (List<Point> a_data) {
    _data = configureNotifiers(#data, _data, a_data);
  }
  @reflectable List<Point> get data => _data;
  
  
  List<num> _numData;
  /**
   * An array of data points for the series, just for numbers. data has precedence over numData
   */
  @reflectable set numData (List<num> a_numData) {
    _numData = configureNotifiers(#numData, _numData, a_numData);
  }
  @reflectable List<num> get numData => _numData;
  
  String _id;
  /**
   * An id for the series. This can be used after render time to get a pointer to the series object through chart.get().
   */
  @reflectable set id (String a_id) {
    _id = configureNotifiers(#id, _id, a_id);
  }
  @reflectable String get id => _id;
  
  int _index;
  /**
   * The index of the series in the chart, affecting the internal index in the chart.series array, the visible Z index as well as the order in the legend.
   */
  @reflectable set index (int a_index) {
    _index = configureNotifiers(#index, _index, a_index);
  }
  @reflectable int get index => _index;
  
  int _legendIndex;
  /**
   * The sequential index of the series in the legend.
   */
  @reflectable set legendIndex (int a_legendIndex) {
    _legendIndex = configureNotifiers(#legendIndex, _legendIndex, a_legendIndex);
  }
  @reflectable int get legendIndex => _legendIndex;
  
  String _name;
  /**
   * The name of the series as shown in the legend, tooltip etc.
   */
  @reflectable set name (String a_name) {
    _name = configureNotifiers(#name, _name, a_name);
  }
  @reflectable String get name => _name;
  
  var _stack;
  /**
   * This option allows grouping series in a stacked chart. The stack option can be a string or a number or anything else, as long as the grouped series' stack options match each other.
   */
  @reflectable set stack (var a_stack) {
    _stack = configureNotifiers(#stack, _stack, a_stack);
  }
  @reflectable get stack => _stack;
  
  String _type;
  /**
   * The type of series. Can be one of area, areaspline, bar, column, line, pie, scatter or spline. From version 2.3, arearange, areasplinerange and columnrange are supported with the highcharts-more.js component.
   */
  @reflectable set type (String a_type) {
    _type = configureNotifiers(#type, _type, a_type);
  }
  @reflectable String  get type => _type;
  
  var _xAxis;
  /**
   * When using dual or multiple x axes, this number defines which xAxis the particular series is connected to. It refers to either the axis id or the index of the axis in the xAxis array, with 0 being the first. Defaults to 0.
   */
  @reflectable set xAxis (var a_xAxis) {
    _xAxis = configureNotifiers(#xAxis, _xAxis, a_xAxis);
  }
  @reflectable get xAxis => _xAxis;
  
  
  var _yAxis;
  /**
   *  When using dual or multiple y axes, this number defines which yAxis the particular series is connected to. It refers to either the axis id or the index of the axis in the yAxis array, with 0 being the first. Defaults to 0.
   */
  @reflectable set yAxis (var a_yAxis) {
    _yAxis = configureNotifiers(#yAxis, _yAxis, a_yAxis);
  }
  @reflectable get yAxis => _yAxis;
  
  int _zIndex;
  /**
   * Define the visual z index of the series.
   */
  @reflectable set zIndex (int a_zIndex) {
    _zIndex = configureNotifiers(#zIndex, _zIndex, a_zIndex);
  }
  @reflectable int get zIndex => _zIndex;
  
  JsObject _dataToJS () {
    JsObject out = null;
    if (this.data != null) {
      out = new JsObject.jsify (convertToMapList(this.data));
    }
    else if (this.numData != null) {
      out = new JsObject.jsify(this.numData);
    }
    return out;
  }
  
  
  List<Map> convertToMapList (List<ToMap> lst) {
    List<Map> out = new List<Map> ();
    for (ToMap m in lst) {
      out.add(m.toMap());
    }
    return out;
  }
  
  Map toMap () {
    Map map = super.toMap();
    addMapValue(map, 'data', _dataToJS());
    addMapValue(map, 'id', this.id);
    addMapValue(map, 'index', this.index);
    addMapValue(map, 'legendIndex', this.legendIndex);
    addMapValue(map, 'name', this.name);
    addMapValue(map, 'stack', this.stack);
    addMapValue(map, 'type', this.type);
    addMapValue(map, 'xAxis', this.xAxis);
    addMapValue(map, 'yAxis', this.yAxis);
    addMapValue(map, 'zIndex', this.zIndex);
    
    if (moreOptions != null) 
      map.addAll(moreOptions);
    return map;
  }
  
}

class DataLabels extends OptionsObject  implements ToMap {
  String _align;
  /**
   * The alignment of the data label compared to the point. Can be one of "left", "center" or "right". Defaults to "center". Defaults to center.
   */
  @reflectable set align (String a_align) {
    _align = configureNotifiers(#align, _align, a_align);
  }
  @reflectable String get align => _align;
  
  
  String _backgroundColor;
  /**
   * The background color or gradient for the data label. Defaults to undefined.
   */
  @reflectable set backgroundColor (String a_backgroundColor) {
    _backgroundColor = configureNotifiers(#backgroundColor, _backgroundColor, a_backgroundColor);
  }
  @reflectable String get backgroundColor => _backgroundColor;
  
  
  String _borderColor;
  /**
   * The border color for the data label. Defaults to undefined.
   */
  @reflectable set borderColor (String a_borderColor) {
    _borderColor = configureNotifiers(#borderColor, _borderColor, a_borderColor);
  }
  @reflectable String get borderColor => _borderColor;
  
  
  int _borderRadius;
  /**
   * The border radius in pixels for the data label. Defaults to 0.
   */
  @reflectable set borderRadius (int a_borderRadius) {
    _borderRadius = configureNotifiers(#borderRadius, _borderRadius, a_borderRadius);
  }
  @reflectable int get borderRadius => _borderRadius;
  
  int _borderWidth;
  /**
   * The border width in pixels for the data label. Defaults to 0.
   */
  @reflectable set borderWidth (int a_borderWidth) {
    _borderWidth = configureNotifiers(#borderWidth, _borderWidth, a_borderWidth);
  }
  @reflectable int get borderWidth => _borderWidth;
  
  
  String _color;
  /**
   * The text color for the data labels. Defaults to null.
   */
  @reflectable set color (String a_color) {
    _color = configureNotifiers(#color, _color, a_color);
  }
  @reflectable String get color => _color;
  
  
  bool _crop;
  /**
   * Whether to hide data labels that are outside the plot area. By default, the data label is moved inside the plot area according to the overflow option. Defaults to true.
   */
  @reflectable set crop (bool a_crop) {
    _crop = configureNotifiers(#crop, _crop, a_crop);
  }
  @reflectable bool get crop => _crop;
  
  
  bool _defer;
  /**
   * Whether to defer displaying the data labels until the initial series animation has finished. Defaults to true.
   */
  @reflectable set defer (bool a_defer) {
    _defer = configureNotifiers(#defer, _defer, a_defer);
  }
  @reflectable bool get defer => _defer;
  
  
  bool _enabled;
  /**
   * Enable or disable the data labels. Defaults to false.
   */
  @reflectable set enabled (bool a_enabled) {
    _enabled = configureNotifiers(#enabled, _enabled, a_enabled);
  }
  @reflectable bool get enabled => _enabled;
  
  String _format;
  /**
   * A format string for the data label. Available variables are the same as for formatter. Defaults to {y}. 
   */
  @reflectable set format (String a_format) {
    _format = configureNotifiers(#format, _format, a_format);
  }
  @reflectable String get format => _format;
  
  Function _formatter;
  /**
   * Callback function to format the data label. Note that if a format is defined, the format takes precedence and the formatter is ignored. Available data are:
   *     this.percentage Stacked series and pies only. The point's percentage of the total.
   *     this.point  The point object. The point name, if defined, is available through this.point.name.
   *     this.series:  The series object. The series name is available through this.series.name.
   *     this.total  Stacked series only. The total value at this point's x value.
   *     this.x: The x value.
   *     this.y: The y value.
   */
  @reflectable set formatter (Function a_formatter) {
    _formatter = notifyPropertyChange(#formatter, _formatter, a_formatter);
  }
  @reflectable Function get formatter => _formatter;
  
  
  bool _inside;
  /**
   * For points with an extent, like columns, whether to align the data label inside the box or to the actual value point. Defaults to false in most cases, true in stacked columns.
   */
  @reflectable set inside (bool a_inside) {
    _inside = configureNotifiers(#inside, _inside, a_inside);
  }
  @reflectable bool get inside => _inside;
  
  
  String _overflow;
  /**
   * How to handle data labels that flow outside the plot area. The default is justify, which aligns them inside the plot area. For columns and bars, this means it will be moved inside the bar. To display data labels outside the plot area, set crop to false and overflow to "none". Defaults to justify.
   */
  @reflectable set overflow (String a_overflow) {
    _overflow = configureNotifiers(#overflow, _overflow, a_overflow);
  }
  @reflectable String get overflow => _overflow;
  
  
  int _padding;
  /**
   * When either the borderWidth or the backgroundColor is set, this   is the padding within the box. Defaults to 2.
   */
  @reflectable set padding (int a_padding) {
    _padding = configureNotifiers(#padding, _padding, a_padding);
  }
  @reflectable int get padding => _padding;
  
  
  int _rotation;
  /**
   * Text rotation in degrees. Note that due to a more complex structure, backgrounds and borders will be lost on a rotated data label. Defaults to 0.
   */
  @reflectable set rotation (int a_rotation) {
    _rotation = configureNotifiers(#rotation, _rotation, a_rotation);
  }
  @reflectable int get rotation => _rotation;
  
  bool _shadow;
  /**
   * The shadow of the box. Works best with borderWidth or backgroundColor. Since 2.3 the shadow can be an object configuration containing color, offsetX, offsetY, opacity and width. Defaults to false.
   */
  @reflectable set shadow (bool a_shadow) {
    _shadow = configureNotifiers(#shadow, _shadow, a_shadow);
  }
  @reflectable bool get shadow => _shadow;
  
  
  Map _style;
  /**
   * Styles for the label
   */
  @reflectable set style (Map a_style) {
    _style = configureNotifiers(#style, _style, a_style);
  }
  @reflectable Map get style => _style;
  
  bool _useHTML;
  /**
   * Whether to use HTML to render the labels. Defaults to false.
   */
  @reflectable set useHTML (bool a_useHTML) {
    _useHTML = configureNotifiers(#useHTML, _useHTML, a_useHTML);
  }
  @reflectable bool get useHTML => _useHTML;
  
  String _verticalAlign;
  /**
   * The vertical alignment of a data label. Can be one of top, middle or bottom. The default value depends on the data, for instance in a column chart, the label is above positive values and below negative values.
   */
  @reflectable set verticalAlign (String a_verticalAlign) {
    _verticalAlign = configureNotifiers(#verticalAlign, _verticalAlign, a_verticalAlign);
  }
  @reflectable String get verticalAlign => _verticalAlign;
  
  
  int _x;
  /**
   * The x position offset of the label relative to the point. Defaults to 0.
   */
  @reflectable set x (int a_x) {
    _x = configureNotifiers(#x, _x, a_x);
  }
  @reflectable int get x => _x;
  
  
  int _y;
  /**
   * The y position offset of the label relative to the point. Defaults to -6.
   */
  @reflectable set y (int a_y) {
    _y = configureNotifiers(#y, _y, a_y);
  }
  @reflectable int get y => _y;
  
  int _zIndex;
  /**
   * The Z index of the data labels. The default Z index puts it above the series. Use a Z index of 2 to display it behind the series. Defaults to 6.
   */
  @reflectable set zIndex (int a_zIndex) {
    _zIndex = configureNotifiers(#zIndex, _zIndex, a_zIndex);
  }
  @reflectable int get zIndex => _zIndex;
  
  
  Map toMap () {
    Map map = new Map ();
    addMapValue(map, 'align', this.align);
    addMapValue(map, 'backgroundColor', this.backgroundColor);
    addMapValue(map, 'borderColor', this.borderColor);
    addMapValue(map, 'borderRadius', this.borderRadius);
    addMapValue(map, 'borderWidth', this.borderWidth);
    addMapValue(map, 'color', this.color);
    addMapValue(map, 'crop', this.crop);
    addMapValue(map, 'defer', this.defer);
    addMapValue(map, 'enabled', this.enabled);
    addMapValue(map, 'format', this.format);
    addMapValue(map, 'formatter', this.formatter);
    addMapValue(map, 'inside', this.inside);
    addMapValue(map, 'overflow', this.overflow);
    addMapValue(map, 'padding', this.padding);
    addMapValue(map, 'rotation', this.rotation);
    addMapValue(map, 'shadow', this.shadow);
    addMapValue(map, 'style', this.style);
    addMapValue(map, 'useHTML', this.useHTML);
    addMapValue(map, 'verticalAlign', this.verticalAlign);
    addMapValue(map, 'x', this.x);
    addMapValue(map, 'y', this.y);
    addMapValue(map, 'zIndex', this.zIndex);
    if (moreOptions != null) {
      map.addAll(moreOptions);
    }
    return map;
  }
  
}

class Point extends OptionsObject  implements ToMap {
  String _color;
  /**
   * Individual color for the point. By default the color is pulled from the global colors array.
   */
  @reflectable set color (String a_color) {
    _color = configureNotifiers(#color, _color, a_color);
  }
  @reflectable String get color => _color;
  
  
  DataLabels _dataLabels;
  /**
   * Individual data label for each point. The options are the same as the ones for plotOptions.series.dataLabels
   */
  @reflectable set dataLabels (DataLabels a_dataLabels) {
    _dataLabels = configureNotifiers(#dataLabels, _dataLabels, a_dataLabels);
  }
  @reflectable DataLabels get dataLabels => _dataLabels;
  
  String _drilldown;
  /**
   * The id of a series in the drilldown.series array to use for a drilldown for this point.
   */
  @reflectable set drilldown (String a_drilldown) {
    _drilldown = configureNotifiers(#drilldown, _drilldown, a_drilldown);
  }
  @reflectable String get drilldown => _drilldown;
  
  Map _events;
  /**
   * Individual point events. Events: 
   *  click
   *  mouseOut
   *  mouseOver
   *  remove
   *  select
   *  unselect
   *  update
   */
  @reflectable set events (Map a_events) {
    _events = configureNotifiers(#events, _events, a_events);
  }
  @reflectable Map get events => _events;
  
  String _id;
  /**
   * An id for the point. This can be used after render time to get a pointer to the point object through chart.get().
   */
  @reflectable set id (String a_id) {
    _id = configureNotifiers(#id, _id, a_id);
  }
  @reflectable String get id => _id;
  
  int _legendIndex;
  /**
   * Pies only. The sequential index of the pie slice in the legend.   .
   */
  @reflectable set legendIndex (int a_legendIndex) {
    _legendIndex = configureNotifiers(#legendIndex, _legendIndex, a_legendIndex);
  }
  @reflectable int get legendIndex => _legendIndex;
  
  
  Map _marker;
  @reflectable set marker (Map a_marker) {
    _marker = configureNotifiers(#marker, _marker, a_marker);
  }
  @reflectable Map get marker => _marker;
  
  String _name;
  /**
   * The name of the point as shown in the legend, tooltip, dataLabel etc.
   */
  @reflectable set name (String a_name) {
    _name = configureNotifiers(#name, _name, a_name);
  }
  @reflectable String get name => _name;
  
  bool _sliced;
  /**
   * Pie series only. Whether to display a slice offset from the center. Defaults to false.
   */
  @reflectable set sliced (bool a_sliced) {
    _sliced = configureNotifiers(#sliced, _sliced, a_sliced);
  }
  @reflectable bool get sliced => _sliced;
  
  num _x;
  /**
   * The x value of the point.
   */
  @reflectable set x (num a_x) {
    _x = configureNotifiers(#x, _x, a_x);
  }
  @reflectable num get x => _x;
  
  num _y;
  /**
   * The y value of the point
   */
  @reflectable set y (num a_y) {
    _y = configureNotifiers(#y, _y, a_y);
  }
  @reflectable num get y => _y;
  
  Map toMap () {
    Map map = new Map ();
    addMapValue(map, 'color', this.color);
    addMapValue(map, 'dataLabels', this.dataLabels);
    addMapValue(map, 'drilldown', this.drilldown);
    addMapValue(map, 'events', this.events);
    addMapValue(map, 'id', this.id);
    addMapValue(map, 'legendIndex', this.legendIndex);
    addMapValue(map, 'marker', this.marker);
    addMapValue(map, 'name', this.name);
    addMapValue(map, 'sliced', this.sliced);
    addMapValue(map, 'x', this.x);
    addMapValue(map, 'y', this.y);
    if (moreOptions != null) {
      map.addAll(moreOptions);
    }
    return map;
  }
  
}

class Credits extends OptionsObject implements ToMap {
  
  bool _enabled = true;
  /**
   * Whether to show the credits text. Defaults to true.
   */
  @reflectable set enabled (bool a_enabled) {
    _enabled = configureNotifiers(#enabled, _enabled, a_enabled);
  }
  @reflectable bool get enabled => _enabled;
  
  String _href/* = "http://www.highcharts.com"*/;
  /**
   * The URL for the credits label. Defaults to http://www.highcharts.com.
   */
  @reflectable set href (String a_href) {
    _href = configureNotifiers(#href, _href, a_href);
  }
  @reflectable String get href => _href;
  
  Position _position/* = new Position (align: "right", verticalAlign: "bottom", x: -10, y: -5)*/;
  /**
   * Position configuration for the credtis label. Supported properties are align, verticalAlign, x and y. Defaults to
   */
  @reflectable set position (Position a_position) {
    _position = configureNotifiers(#position, _position, a_position);
  }
  @reflectable Position get position => _position;
  
  /**
   * CSS styles for the credits label. Defaults to:
   *  style: {
   *     cursor: 'pointer',
   *     color: '#909090',
   *     fontSize: '10px'
   *   }
   */
  Map style/* = {
    'cursor': 'pointer', 
    'color': '#909090', 
    'fontSize': '10px'
  }*/;
  
  String _text/* = 'Highcharts.com'*/;
  /**
   * The text for the credits label. Defaults to Highcharts.com.
   */
  @reflectable set text (String a_text) {
    _text = configureNotifiers(#text, _text, a_text);
  }
  @reflectable String get text => _text;
  
  Map toMap () {
    Map map = new Map ();
    addMapValue(map, 'enabled', this.enabled);
    addMapValue(map, 'href', this.href);
    addMapValue(map, 'position', this.position);
    addMapValue(map, 'style', this.style);
    addMapValue(map, 'text', this.text);
    if (moreOptions != null) {
      map.addAll(moreOptions);
    }
    return map;
  }
  
}

class Chart extends OptionsObject implements ToMap {
  bool _alignTicks;
  /**
   * When using multiple axis, the ticks of two or more opposite axes will automatically be aligned by adding ticks to the axis or axes with the least ticks. This can be prevented by setting alignTicks to false. If the grid lines look messy, it's a good idea to hide them for the secondary axis by setting gridLineWidth to 0. Defaults to true.
   */
  @reflectable set alignTicks (bool a_alignTicks) {
    _alignTicks = configureNotifiers(#alignTicks, _alignTicks, a_alignTicks);
  }
  @reflectable bool get alignTicks => _alignTicks;
  
  bool _animation;
  /**
   * Set the overall animation for all chart updating. Animation can be disabled throughout the chart by setting it to false here. It can be overridden for each individual API method as a function parameter. The only animation not affected by this option is the initial series animation
   * The animation can either be set as a boolean or a configuration object. If true, it will use the 'swing' jQuery easing and a duration of 500 ms. If used as a configuration object, the following properties are supported:
   * duration: The duration of the animation in milliseconds.
   * easing: When using jQuery as the general framework, the easing can be set to linear or swing. More easing functions are available with the use of jQuery plug-ins, most notably the jQuery UI suit
   */
  @reflectable set animation (bool a_animation) {
    _animation = configureNotifiers(#animation, _animation, a_animation);
  }
  @reflectable bool get animation => _animation;
  
  String _backgroundColor;
  /**
   * The background color or gradient for the outer chart area. Defaults to #FFFFFF.
   */
  @reflectable set backgroundColor (String a_backgroundColor) {
    _backgroundColor = configureNotifiers(#backgroundColor, _backgroundColor, a_backgroundColor);
  }
  @reflectable String get backgroundColor => _backgroundColor;
  
  String _borderColor;
  /**
   * The color of the outer chart border. The border is painted using vector graphic techniques to allow rounded corners. Defaults to #4572A7.
   */
  @reflectable set borderColor (String a_borderColor) {
    _borderColor = configureNotifiers(#borderColor, _borderColor, a_borderColor);
  }
  @reflectable String get borderColor => _borderColor;
  
  int _borderRadius;
  /**
   * The corner radius of the outer chart border. In export, the radius defaults to 0. Defaults to 5.
   */
  @reflectable set borderRadius (int a_borderRadius) {
    _borderRadius = configureNotifiers(#borderRadius, _borderRadius, a_borderRadius);
  }
  @reflectable int get borderRadius => _borderRadius;
  
  int _borderWidth;
  /**
   * The pixel width of the outer chart border. The border is painted using vector graphic techniques to allow rounded corners. Defaults to 0.
   */
  @reflectable set borderWidth (int a_borderWidth) {
    _borderWidth = configureNotifiers(#borderWidth, _borderWidth, a_borderWidth);
  }
  @reflectable int get borderWidth => _borderWidth;
  
  String _className;
  /**
   * A CSS class name to apply to the charts container div, allowing unique CSS styling for each chart.
   */
  @reflectable set className (String a_className) {
    _className = configureNotifiers(#className, _className, a_className);
  }
  @reflectable String get className => _className;
  
  String _defaultSeriesType;
  /**
   * Alias of type. Defaults to line.
   */
  @reflectable set defaultSeriesType (String a_defaultSeriesType) {
    _defaultSeriesType = configureNotifiers(#defaultSeriesType, _defaultSeriesType, a_defaultSeriesType);
  }
  @reflectable String get defaultSeriesType => _defaultSeriesType;
  
  ChartEvents _events;
  /**
   * Event listeners for the chart
   */
  @reflectable set events (ChartEvents a_events) {
    _events = configureNotifiers(#events, _events, a_events);
  }
  @reflectable ChartEvents get events => _events;
  
  int _height;
  /**
   * An explicit height for the chart. By default the height is calculated from the offset height of the containing element, or 400 pixels if the containing element's height is 0. 
   */
  @reflectable set height (int a_height) {
    _height = configureNotifiers(#height, _height, a_height);
  }
  @reflectable int get height => _height;
  
  bool _ignoreHiddenSeries;
  /**
   * If true, the axes will scale to the remaining visible series once one series is hidden. If false, hiding and showing a series will not affect the axes or the other series. For stacks, once one series within the stack is hidden, the rest of the stack will close in around it even if the axis is not affected. Defaults to true.
   */
  @reflectable set ignoreHiddenSeries (bool a_ignoreHiddenSeries) {
    _ignoreHiddenSeries = configureNotifiers(#ignoreHiddenSeries, _ignoreHiddenSeries, a_ignoreHiddenSeries);
  }
  @reflectable bool get ignoreHiddenSeries => _ignoreHiddenSeries;
  
  bool _inverted;
  /**
   * Whether to invert the axes so that the x axis is vertical and y axis is horizontal. When true, the x axis is reversed by default. If a bar series is present in the chart, it will be inverted automatically. Defaults to false.
   */
  @reflectable set inverted (bool a_inverted) {
    _inverted = configureNotifiers(#inverted, _inverted, a_inverted);
  }
  @reflectable bool get inverted => _inverted;
  
  List<int> _margin;
  /**
   * The margin between the outer edge of the chart and the plot area. The numbers in the array designate top, right, bottom and left respectively. Use the options marginTop, marginRight, marginBottom and marginLeft for shorthand setting of one option.
   * Since version 2.1, the margin is 0 by default. The actual space is dynamically calculated from the offset of axis labels, axis title, title, subtitle and legend in addition to the spacingTop, spacingRight, spacingBottom and spacingLeft options.
   */
  @reflectable set margin (List<int> a_margin) {
    _margin = configureNotifiers(#margin, _margin, a_margin);
  }
  @reflectable List<int> get margin => _margin;
  
  int _marginBottom;
  /**
   * The margin between the bottom outer edge of the chart and the plot area. Use this to set a fixed pixel value for the margin as opposed to the default dynamic margin. See also spacingBottom.
   */
  @reflectable set marginBottom (int a_marginBottom) {
    _marginBottom = configureNotifiers(#marginBottom, _marginBottom, a_marginBottom);
  }
  @reflectable int get marginBottom => _marginBottom;
  
  int _marginLeft;
  /**
   * The margin between the left outer edge of the chart and the plot area. Use this to set a fixed pixel value for the margin as opposed to the default dynamic margin. See also spacingLeft.
   */
  @reflectable set marginLeft (int a_marginLeft) {
    _marginLeft = configureNotifiers(#marginLeft, _marginLeft, a_marginLeft);
  }
  @reflectable int get marginLeft => _marginLeft;

  int _marginRight;
  /**
   * The margin between the right outer edge of the chart and the plot area. Use this to set a fixed pixel value for the margin as opposed to the default dynamic margin. See also spacingRight.
   */
  @reflectable set marginRight (int a_marginRight) {
    _marginRight = configureNotifiers(#marginRight, _marginRight, a_marginRight);
  }
  @reflectable int get marginRight => _marginRight;
  
  int _marginTop;
  /**
   * The margin between the top outer edge of the chart and the plot area. Use this to set a fixed pixel value for the margin as opposed to the default dynamic margin. See also spacingTop.
   */
  @reflectable set marginTop (int a_marginTop) {
    _marginTop = configureNotifiers(#marginTop, _marginTop, a_marginTop);
  }
  @reflectable int get marginTop => _marginTop;
  
  String _pinchType;
  /**
   * Equivalent to zoomType, but for multitouch gestures only. By default, the pinchType is the same as the zoomType setting. However, pinching can be enabled separately in some cases, for example in stock charts where a mouse drag pans the chart, while pinching is enabled. Defaults to null.
   */
  @reflectable set pinchType (String a_pinchType) {
    _pinchType = configureNotifiers(#pinchType, _pinchType, a_pinchType);
  }
  @reflectable String get pinchType => _pinchType;
  
  String _plotBackgroundColor;
  /**
   * The background color or gradient for the plot area.
   */
  @reflectable set plotBackgroundColor (String a_plotBackgroundColor) {
    _plotBackgroundColor = configureNotifiers(#plotBackgroundColor, _plotBackgroundColor, a_plotBackgroundColor);
  }
  @reflectable String get plotBackgroundColor => _plotBackgroundColor;
  
  String _plotBackgroundImage;
  /**
   * The URL for an image to use as the plot background. To set an image as the background for the entire chart, set a CSS background image to the container element. Note that for the image to be applied to exported charts, its URL needs to be accessible by the export server.
   */
  @reflectable set plotBackgroundImage (String a_plotBackgroundImage) {
    _plotBackgroundImage = configureNotifiers(#plotBackgroundImage, _plotBackgroundImage, a_plotBackgroundImage);
  }
  @reflectable String get plotBackgroundImage => _plotBackgroundImage;
  
  String _plotBorderColor;
  /**
   * The color of the inner chart or plot area border. Defaults to #C0C0C0.
   */
  @reflectable set plotBorderColor (String a_plotBorderColor) {
    _plotBorderColor = configureNotifiers(#plotBorderColor, _plotBorderColor, a_plotBorderColor);
  }
  @reflectable String get plotBorderColor => _plotBorderColor;
  
  int _plotBorderWidth;
  /**
   * The pixel width of the plot area border. Defaults to 0.
   */
  @reflectable set plotBorderWidth (int a_plotBorderWidth) {
    _plotBorderWidth = configureNotifiers(#plotBorderWidth, _plotBorderWidth, a_plotBorderWidth);
  }
  @reflectable int get plotBorderWidth => _plotBorderWidth;
  
  bool _plotShadow;
  /**
   * Whether to apply a drop shadow to the plot area. Requires that plotBackgroundColor be set. Since 2.3 the shadow can be an object configuration containing color, offsetX, offsetY, opacity and width. Defaults to false.
   */
  @reflectable set plotShadow (bool a_plotShadow) {
    _plotShadow = configureNotifiers(#plotShadow, _plotShadow, a_plotShadow);
  }
  @reflectable bool get plotShadow => _plotShadow;
  
  bool _polar;
  /**
   * When true, cartesian charts like line, spline, area and column are transformed into the polar coordinate system. Requires highcharts-more.js. Defaults to false.
   */
  @reflectable set polar (bool a_polar) {
    _polar = configureNotifiers(#polar, _polar, a_polar);
  }
  @reflectable bool get polar => _polar;
  
  bool _reflow;
  /**
   * Whether to reflow the chart to fit the width of the container div on resizing the window. Defaults to true.
   */
  @reflectable set reflow (bool a_reflow) {
    _reflow = configureNotifiers(#reflow, _reflow, a_reflow);
  }
  @reflectable bool get reflow => _reflow;
  
  String _renderTo;
  /**
   * The HTML element where the chart will be rendered. The element by that id is used. 
   */
  @reflectable set renderTo (String a_renderTo) {
    _renderTo = configureNotifiers(#renderTo, _renderTo, a_renderTo);
  }
  @reflectable String get renderTo => _renderTo;
  
  ResetZoomButton _resetZoomButton;
  /**
   * The button that appears after a selection zoom, allowing the user to reset zoom.
   */
  @reflectable set resetZoomButton (ResetZoomButton a_resetZoomButton) {
    _resetZoomButton = configureNotifiers(#resetZoomButton, _resetZoomButton, a_resetZoomButton);
  }
  @reflectable ResetZoomButton get resetZoomButton => _resetZoomButton;
  
  String _selectionMarkerFill;
  /**
   * The background color of the marker square when selecting (zooming in on) an area of the chart. Defaults to rgba(69,114,167,0.25).
   * 
   */
  @reflectable set selectionMarkerFill (String a_selectionMarkerFill) {
    _selectionMarkerFill = configureNotifiers(#selectionMarkerFill, _selectionMarkerFill, a_selectionMarkerFill);
  }
  @reflectable String get selectionMarkerFill => _selectionMarkerFill;
  
  bool _shadow;
  /**
   * Whether to apply a drop shadow to the outer chart area. Requires that backgroundColor be set. Since 2.3 the shadow can be an object configuration containing color, offsetX, offsetY, opacity and width. Defaults to false.
   */
  @reflectable set shadow (bool a_shadow) {
    _shadow = configureNotifiers(#shadow, _shadow, a_shadow);
  }
  @reflectable bool get shadow => _shadow;
  
  bool _showAxes;
  /**
   * Whether to show the axes initially. This only applies to empty charts where series are added dynamically, as axes are automatically added to cartesian series. Defaults to false.
   */
  @reflectable set showAxes (bool a_showAxes) {
    _showAxes = configureNotifiers(#showAxes, _showAxes, a_showAxes);
  }
  @reflectable bool get showAxes => _showAxes;
  
  List<int> _spacing;
  /**
   * The distance between the outer edge of the chart and the content, like title, legend, axis title or labels. The numbers in the array designate top, right, bottom and left respectively. Use the options spacingTop, spacingRight, spacingBottom and spacingLeft options for shorthand setting of one option. Defaults to [10, 10, 15, 10].
   */
  @reflectable set spacing (List<int> a_spacing) {
    _spacing = configureNotifiers(#spacing, _spacing, a_spacing);
  }
  @reflectable List<int> get spacing => _spacing;
  
  int _spacingBottom;
  /**
   * The space between the bottom edge of the chart and the content (plot area, axis title and labels, title, subtitle or legend in top position).
   */
  @reflectable set spacingBottom (int a_spacingBottom) {
    _spacingBottom = configureNotifiers(#spacingBottom, _spacingBottom, a_spacingBottom);
  }
  @reflectable int get spacingBottom => _spacingBottom;
  
  int _spacingLeft;
  /**
   * The space between the left edge of the chart and the content (plot area, axis title and labels, title, subtitle or legend in top position).
   */
  @reflectable set spacingLeft (int a_spacingLeft) {
    _spacingLeft = configureNotifiers(#spacingLeft, _spacingLeft, a_spacingLeft);
  }
  @reflectable int get spacingLeft => _spacingLeft;
  
  int _spacingRight;
  /**
   * The space between the right edge of the chart and the content (plot area, axis title and labels, title, subtitle or legend in top position).
   */
  @reflectable set spacingRight (int a_spacingRight) {
    _spacingRight = configureNotifiers(#spacingRight, _spacingRight, a_spacingRight);
  }
  @reflectable int get spacingRight => _spacingRight;
  
  int _spacingTop;
  /**
   * The space between the top edge of the chart and the content (plot area, axis title and labels, title, subtitle or legend in top position).
   */
  @reflectable set spacingTop (int a_spacingTop) {
    _spacingTop = configureNotifiers(#spacingTop, _spacingTop, a_spacingTop);
  }
  @reflectable int get spacingTop => _spacingTop;
  
  Map _style;
  /**
   * Additional CSS styles to apply inline to the container div. Note that since the default font styles are applied in the renderer, it is ignorant of the individual chart options and must be set globally. Defaults to:
   *   style: {
   *     fontFamily: '"Lucida Grande", "Lucida Sans Unicode", Verdana, Arial, Helvetica, sans-serif', // default font
   *     fontSize: '12px'
   *   }
   */
  @reflectable set style (Map a_style) {
    _style = configureNotifiers(#style, _style, a_style);
  }
  @reflectable Map get style => _style;
  
  
  String _type;
  /**
   * The default series type for the chart. Can be any of the chart types listed under plotOptions. Defaults to line.
   */
  @reflectable set type (String a_type) {
    _type = configureNotifiers(#type, _type, a_type);
  }
  @reflectable String get type => _type;
  
  int _width;
  /**
   * An explicit width for the chart. By default the width is calculated from the offset width of the containing element.
   */
  @reflectable set width (int a_width) {
    _width = configureNotifiers(#width, _width, a_width);
  }
  @reflectable int get width => _width;
   
  String _zoomType;
  /**
   * Decides in what dimentions the user can zoom by dragging the mouse. Can be one of x, y or xy.
   */
  @reflectable set zoomType (String a_zoomType) {
    _zoomType = configureNotifiers(#zoomType, _zoomType, a_zoomType);
  }
  @reflectable String get zoomType => _zoomType;
  
  
  Map toMap () {
    Map map = new Map ();
    addMapValue(map, 'alignTicks'                , this.alignTicks);
    addMapValue(map, 'animation'                 , this.animation);
    addMapValue(map, 'backgroundColor'           , this.backgroundColor);
    addMapValue(map, 'borderColor'               , this.borderColor);
    addMapValue(map, 'borderRadius'              , this.borderRadius);
    addMapValue(map, 'borderWidth'               , this.borderWidth);
    addMapValue(map, 'className'                 , this.className);
    addMapValue(map, 'defaultSeriesType'         , this.defaultSeriesType);
    addMapValue(map, 'events'                    , this.events);
    addMapValue(map, 'height'                    , this.height);
    addMapValue(map, 'ignoreHiddenSeries'        , this.ignoreHiddenSeries);
    addMapValue(map, 'inverted'                  , this.inverted);
    addMapValue(map, 'margin'                    , this.margin);
    addMapValue(map, 'marginBottom'              , this.marginBottom);
    addMapValue(map, 'marginLeft'                , this.marginLeft);
    addMapValue(map, 'marginRight'               , this.marginRight);
    addMapValue(map, 'marginTop'                 , this.marginTop);
    addMapValue(map, 'pinchType'                 , this.pinchType);
    addMapValue(map, 'plotBackgroundColor'       , this.plotBackgroundColor);
    addMapValue(map, 'plotBackgroundImage'       , this.plotBackgroundImage);
    addMapValue(map, 'plotBorderColor'           , this.plotBorderColor);
    addMapValue(map, 'plotBorderWidth'           , this.plotBorderWidth);
    addMapValue(map, 'plotShadow'                , this.plotShadow);
    addMapValue(map, 'polar'                     , this.polar);
    addMapValue(map, 'reflow'                    , this.reflow);
    addMapValue(map, 'renderTo'                  , this.renderTo); 
    addMapValue(map, 'resetZoomButton'           , this.resetZoomButton);
    addMapValue(map, 'selectionMarkerFill'       , this.selectionMarkerFill);
    addMapValue(map, 'shadow'                    , this.shadow);
    addMapValue(map, 'showAxes'                  , this.showAxes);
    addMapValue(map, 'spacing'                   , this.spacing);
    addMapValue(map, 'spacingBottom'             , this.spacingBottom);
    addMapValue(map, 'spacingLeft'               , this.spacingLeft);
    addMapValue(map, 'spacingRight'              , this.spacingRight);
    addMapValue(map, 'spacingTop'                , this.spacingTop);
    addMapValue(map, 'style'                     , this.style);
    addMapValue(map, 'type'                      , this.type);
    addMapValue(map, 'width'                     , this.width); 
    addMapValue(map, 'zoomType'                  , this.zoomType);
    if (moreOptions != null) {
      map.addAll(moreOptions);
    }
    return map;
  }
  
  
}

class ResetZoomButton extends OptionsObject implements ToMap {
  Position _position;
  /**
   * The position of the button. This is an object that can hold the properties align, verticalAlign, x and y.
   */
  @reflectable set position (Position a_position) {
    _position = configureNotifiers(#position, _position, a_position);
  }
  @reflectable Position get position => _position;
  
  String _relativeTo;
  /**
   * What frame the button should be placed related to. Can be either "plot" or "chart". Defaults to plot.
   */
  @reflectable set relativeTo (String a_relativeTo) {
    _relativeTo = configureNotifiers(#relativeTo, _relativeTo, a_relativeTo);
  }
  @reflectable String get relativeTo => _relativeTo;
  
  
  Map _theme;
  /**
   * A collection of attributes for the button. The object takes SVG attributes like fill, stroke, stroke-width or r, the border radius. The theme also supports style, a collection of CSS properties for the text. Equivalent attributes for the hover state are given in theme.states.hover.
   */
  @reflectable set theme (Map a_theme) {
    _theme = configureNotifiers(#theme, _theme, a_theme);
  }
  @reflectable Map get theme => _theme;
  
  
  Map toMap () {
    Map map = new Map ();
    addMapValue(map, 'position', this.position);
    addMapValue(map, 'relativeTo', this.relativeTo);
    addMapValue(map, 'theme', this.theme);
    if (moreOptions != null) {
      map.addAll(moreOptions);
    }
    return map;
  }
  
}

class Position extends OptionsObject implements ToMap {
  String _align;
  @reflectable set align (String a_align) {
    _align = configureNotifiers(#align, _align, a_align);
  }
  @reflectable String get align => _align;
  
  String _verticalAlign;
  @reflectable set verticalAlign (String a_verticalAlign) {
    _verticalAlign = configureNotifiers(#verticalAlign, _verticalAlign, a_verticalAlign);
  }
  @reflectable String get verticalAlign => _verticalAlign;
  
  int _x;
  @reflectable set x (int a_x) {
    _x = configureNotifiers(#x, _x, a_x);
  }
  @reflectable int get x => _x;
  
  int _y;
  @reflectable set y (int a_y) {
    _y = configureNotifiers(#y, _y, a_y);
  }
  @reflectable int get y => _y;
  
  Position ();
  
  Map toMap () {
    Map map = new Map ();
    addMapValue(map, 'align', this.align); 
    addMapValue(map, 'verticalAlign', this.verticalAlign); 
    addMapValue(map, 'x', this.x);
    addMapValue(map, 'y', this.y);
    if (moreOptions != null) {
      map.addAll(moreOptions);
    }
    return map;
  }
  
}

class ChartEvents extends OptionsObject implements ToMap {
  
  Function _addSeries;
  /**
   * Fires when a series is added to the chart after load time, using the addSeries method. The this keyword refers to the chart object itself. One parameter, event, is passed to the function. This contains common event information based on jQuery or MooTools depending on which library is used as the base for Highcharts. Through event.options you can access the series options that was passed to the addSeries method. Returning false prevents the series from being added.
   */
  @reflectable set addSeries (Function a_addSeries) {
    _addSeries = configureNotifiers(#addSeries, _addSeries, a_addSeries);
  }
  @reflectable Function get addSeries => _addSeries;
  
  
  Function _click;
  /**
   * Fires when clicking on the plot background. The this keyword refers to the chart object itself. One parameter, event, is passed to the function. This contains common event information based on jQuery or MooTools depending on which library is used as the base for Highcharts.
   * Information on the clicked spot can be found through event.xAxis and event.yAxis, which are arrays containing the axes of each dimension and each axis' value at the clicked spot. The primary axes are event.xAxis[0] and event.yAxis[0]. Remember the unit of a datetime axis is milliseconds since 1970-01-01 00:00:00.
   */
  @reflectable set click (Function a_click) {
    _click = configureNotifiers(#click, _click, a_click);
  }
  @reflectable Function get click => _click;
  
  Function _drilldown;
  /**
   * Fires when a drilldown point is clicked, before the new series is added. Event arguments include point for the originating point, and seriesOptions for the new series.
   * This event is also utilized for async drilldown, where the seriesOptions are not added by option, but rather loaded async.
   */
  @reflectable set drilldown (Function a_drilldown) {
    _drilldown = configureNotifiers(#drilldown, _drilldown, a_drilldown);
  }
  @reflectable Function get drilldown => _drilldown;
  
  Function _drillup;
  /**
   * Fires when drilling up from a drilldown series.
   */
  @reflectable set drillup (Function a_drillup) {
    _drillup = configureNotifiers(#drillup, _drillup, a_drillup);
  }
  @reflectable Function get drillup => _drillup;
  
  Function _load;
  /**
   * Fires when the chart is finished loading. The this keyword refers to the chart object itself. One parameter, event, is passed to the function. This contains common event information based on jQuery or MooTools depending on which library is used as the base for Highcharts.
   * From version 2.0.4, there is also a second parameter to Highcharts.Chart where a callback function can be passed to be executed on chart.load.
   */
  @reflectable set load (Function a_load) {
    _load = configureNotifiers(#load, _load, a_load);
  }
  @reflectable Function get load => _load;
  
  Function _redraw;
  /**
   * Fires when the chart is redrawn, either after a call to chart.redraw() or after an axis, series or point is modified with the redraw option set to true. The this keyword refers to the chart object itself. One parameter, event, is passed to the function. This contains common event information based on jQuery or MooTools depending on which library is used as the base for Highcharts.
   */
  @reflectable set redraw (Function a_redraw) {
    _redraw = configureNotifiers(#redraw, _redraw, a_redraw);
  }
  @reflectable Function get redraw => _redraw;
  
  Function _selection;
  /**
   * Fires when an area of the chart has been selected. Selection is enabled by setting the chart's zoomType. The this keyword refers to the chart object itself. One parameter, event, is passed to the function. This contains common event information based on jQuery or MooTools depending on which library is used as the base for Highcharts. The default action for the selection event is to zoom the chart to the selected area. It can be prevented by calling event.preventDefault().
   * Information on the selected area can be found through event.xAxis and event.yAxis, which are arrays containing the axes of each dimension and each axis' min and max values. The primary axes are event.xAxis[0] and event.yAxis[0]. Remember the unit of a datetime axis is milliseconds since 1970-01-01 00:00:00.
   */
  @reflectable set selection (Function a_selection) {
    _selection = configureNotifiers(#selection, _selection, a_selection);
  }
  @reflectable Function get selection => _selection;
  
  Map toMap () {
    Map map = new Map ();
    addMapValue (map, 'addSeries'   , this.addSeries); 
    addMapValue (map, 'click'       , this.click);
    addMapValue (map, 'drilldown'   , this.drilldown); 
    addMapValue (map, 'drillup'     , this.drillup);
    addMapValue (map, 'load'        , this.load);
    addMapValue (map, 'redraw'      , this.redraw); 
    addMapValue (map, 'selection'   , this.selection);
    if (moreOptions != null) {
      map.addAll(moreOptions);
    }
    return map;
  }
}