List<String> features = [];
List<String> activities = [];
List dataList = [
  {
    "name": "Ada",
    "subTitle": 'The trail is ada accessible',
    "ListVal": "ada",
    "isTaped": false
  },
  {
    "name": 'Beach',
    "subTitle": 'The trail is at a beach',
    "ListVal": 'beach',
    "isTaped": false
  },
  {
    "name": 'Cave',
    "subTitle": 'The trail goes in a cave',
    "ListVal": 'cave',
    "isTaped": false
  },
  {
    "name": 'City-walk',
    "subTitle": 'Trail is in a city',
    "ListVal": 'city-walk',
    "isTaped": false
  },
  {
    "name": 'Dogs',
    "subTitle": 'Dogs are allowed',
    "ListVal": 'dogs',
    "isTaped": false
  },
  {
    "name": 'Dogs-leash',
    "subTitle": 'Dogs must be on leashes',
    "ListVal": 'dogs-leash',
    "isTaped": false
  },
  {
    "name": 'Dogs-no',
    "subTitle": 'Dogs are not allowed on trail ',
    "ListVal": 'dogs-no',
    "isTaped": false
  },
  {
    "name": 'Forest',
    "subTitle": 'The trail is in a forest',
    "ListVal": 'forest',
    "isTaped": false
  },
  {
    "name": 'Historic-site',
    "subTitle": 'Trail has a historic-site',
    "ListVal": 'historic-site',
    "isTaped": false
  },
  {
    "name": 'Hot-springs',
    "subTitle": 'Trail has hot-springs',
    "ListVal": 'hot-springs',
    "isTaped": false
  },
  {
    "name": 'Kids',
    "subTitle": 'The trail is kid friendly',
    "ListVal": 'kids',
    "isTaped": false
  },
  {
    "name": 'Lake',
    "subTitle": 'Trail has a lake',
    "ListVal": 'lake',
    "isTaped": false
  },
  {
    "name": 'Partially-paved',
    "subTitle": 'Trail is partially-paved',
    "ListVal": 'partially-paved',
    "isTaped": false
  },
  {
    "name": "Paved",
    "subTitle": 'Trail is paved',
    "ListVal": 'paved',
    "isTaped": false
  },
  {
    "name": 'Rails-trails',
    "subTitle": 'Trail has a railroad',
    "ListVal": 'rails-trails',
    "isTaped": false
  },
  {
    "name": 'River',
    "subTitle": 'Trail has a river',
    "ListVal": 'river',
    "isTaped": false
  },
  {
    "name": 'Strollers',
    "subTitle": 'Trail can be used by strollers',
    "ListVal": 'strollers',
    "isTaped": false
  },
  {
    "name": 'Views',
    "subTitle": 'Trail has views',
    "ListVal": 'views',
    "isTaped": false
  },
  {
    "name": 'Waterfall',
    "subTitle": 'Trail has a waterfall',
    "ListVal": 'waterfall',
    "isTaped": false
  },
  {
    "name": 'Wild-flowers',
    "subTitle": 'Trail has wild-flowers',
    "ListVal": 'wild-flowers',
    "isTaped": false
  },
  {
    "name": 'Wildlife',
    "subTitle": 'Trail has wildlife',
    "ListVal": 'wildlife',
    "isTaped": false
  }
];

List dataList1 = [
  {
    "name": "Backpacking",
    "subTitle": 'Trail has backpacking',
    "ListVal": "backpacking",
    "isTaped": false
  },
  {
    "name": 'Bike-touring',
    "subTitle": 'Trail has bike-touring',
    "ListVal": 'bike-touring',
    "isTaped": false
  },
  {
    "name": 'Birding',
    "subTitle": 'Trail has birding',
    "ListVal": 'birding',
    "isTaped": false
  },
  {
    "name": 'Camping',
    "subTitle": 'Trail has camping',
    "ListVal": 'camping',
    "isTaped": false
  },
  {
    "name": 'Canoeing',
    "subTitle": 'Trail has canoeing',
    "ListVal": 'canoeing',
    "isTaped": false
  },
  {
    "name": 'Cross-country-skiing',
    "subTitle": 'Trail has cross-country-skiing',
    "ListVal": 'cross-country-skiing',
    "isTaped": false
  },
  {
    "name": 'Fishing',
    "subTitle": 'Trail has fishing',
    "ListVal": 'fishing',
    "isTaped": false
  },
  {
    "name": 'Fly-fishing',
    "subTitle": 'Trail has fly-fishing',
    "ListVal": 'fly-fishing',
    "isTaped": false
  },
  {
    "name": 'Hiking',
    "subTitle": 'Trail has hiking',
    "ListVal": 'hiking',
    "isTaped": false
  },
  {
    "name": 'Horseback-riding',
    "subTitle": 'Trail has horseback-riding',
    "ListVal": 'horseback-riding',
    "isTaped": false
  },
  {
    "name": 'Ice-climbing',
    "subTitle": 'Trail has ice-climbing',
    "ListVal": 'ice-climbing',
    "isTaped": false
  },
  {
    "name": 'Mountain-biking',
    "subTitle": 'Trail has Mountain-biking',
    "ListVal": 'mountain-biking',
    "isTaped": false
  },
  {
    "name": 'Nature-trips',
    "subTitle": 'Trail has nature-trips',
    "ListVal": 'nature-trips',
    "isTaped": false
  },
  {
    "name": 'Off-road-driving',
    "subTitle": 'Trail has off-road-driving',
    "ListVal": 'off-road-driving',
    "isTaped": false
  },
  {
    "name": 'Paddle-sports',
    "subTitle": 'Trail has paddle-sports',
    "ListVal": 'paddle-sports',
    "isTaped": false
  },
  {
    "name": 'Road-biking',
    "subTitle": 'Trail has road-biking',
    "ListVal": 'road-biking',
    "isTaped": false
  },
  {
    "name": 'Rock-climbing',
    "subTitle": 'Trail has rock-climbing',
    "ListVal": 'rock-climbing',
    "isTaped": false
  },
  {
    "name": 'Scenic-driving',
    "subTitle": 'Trail has scenic-driving',
    "ListVal": 'scenic-driving',
    "isTaped": false
  },
  {
    "name": 'Sea-kayaking',
    "subTitle": 'Trail has sea-kayaking',
    "ListVal": 'sea-kayaking',
    "isTaped": false
  },
  {
    "name": 'Skiing',
    "subTitle": 'Trail has skiing',
    "ListVal": 'skiing',
    "isTaped": false
  },
  {
    "name": 'Surfing',
    "subTitle": 'Trail has surfing',
    "ListVal": 'surfing',
    "isTaped": false
  },
  {
    "name": 'Snowboarding',
    "subTitle": 'Trail has snowboarding',
    "ListVal": 'snowboarding',
    "isTaped": false
  },
  {
    "name": 'Snow-shoeing',
    "subTitle": 'Trail has snow-shoeing',
    "ListVal": 'snow-shoeing',
    "isTaped": false
  },
  {
    "name": 'Trail-running',
    "subTitle": 'Trail has trail-running',
    "ListVal": 'trail-running',
    "isTaped": false
  },
  {
    "name": 'Walking',
    "subTitle": 'Trail has walking',
    "ListVal": 'walking',
    "isTaped": false
  },
  {
    "name": 'Whitewater-kayaking',
    "subTitle": 'Trail has whitewater-kayaking',
    "ListVal": 'whitewater-kayaking',
    "isTaped": false
  },
];
