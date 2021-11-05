const fs = require("fs");

const EXTRAS_SEMIDYNAMIC = 0x1;
const EXTRAS_EXTINGUISHABLE = 0x2;
const EXTRAS_STARTEXTINGUISHED = 0x4;
const EXTRAS_SPAWNFIRE = 0x8;
const EXTRAS_SPAWNSMOKE = 0x10;
const EXTRAS_OFF = 0x20;
const EXTRAS_COLORLEGACY = 0x40;
const EXTRAS_NOCASTED = 0x80; // unused
const EXTRAS_FIXFLARESIZE = 0x100;
const EXTRAS_FIREPLACE = 0x200;
const EXTRAS_NO_IGNIT = 0x400;
const EXTRAS_FLARE = 0x800;

const outputDir = "C:/Program Files/Arx Libertatis";
const levels = [
  0, 1, 2, 3, 4, 5, 6, 7, 8, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22,
  23,
];

const getFilename = (levelIdx) =>
  `${outputDir}/graph/levels/level${levelIdx}/level${levelIdx}.llf.json`;

const load = (levelIdx) => {
  return require(getFilename(levelIdx));
};

const save = (llf, levelIdx) => {
  fs.writeFileSync(getFilename(levelIdx), JSON.stringify(llf));
};

const setVertexColorToBlack = (llf) => {
  llf.colors = llf.colors.map(() => ({ r: 0, g: 0, b: 0, a: 255 }));
};

const removeNonExtinguishableLights = (llf) => {
  llf.lights = llf.lights.filter(
    (light) => (light.extras & EXTRAS_EXTINGUISHABLE) > 0
  );
};

const extinguishLights = (llf) => {
  llf.lights = llf.lights.map((light) => {
    light.extras |= EXTRAS_STARTEXTINGUISHED;
    return light;
  });
};

levels.forEach((levelIdx) => {
  console.log(`level ${levelIdx}`);

  const llf = load(levelIdx);

  setVertexColorToBlack(llf);
  removeNonExtinguishableLights(llf);
  // extinguishLights(llf);

  save(llf, levelIdx);
});

console.log("done");
