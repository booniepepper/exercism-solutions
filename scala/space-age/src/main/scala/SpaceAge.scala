object SpaceAge {
  def onEarth: (Double) => Double = _ / 315576e2
  def onMercury: (Double) => Double = onEarth(_) / 0.2408467
  def onVenus: (Double) => Double = onEarth(_) / 0.61519726
  def onMars: (Double) => Double = onEarth(_) / 1.8808158
  def onJupiter: (Double) => Double = onEarth(_) / 11.862615
  def onSaturn: (Double) => Double = onEarth(_) / 29.447498
  def onUranus: (Double) => Double = onEarth(_) / 84.016846
  def onNeptune: (Double) => Double = onEarth(_) / 164.79132
}
