# Unstructured Data

[Back](../Index.md)

### XQuery
- Based on Quilt, which is based on XML-QL
- Uses XPath to express more complex queries

### For-Where-Return

```XQuery
FOR $x IN document["bib.xml"]/bib/book,
$y IN $x/title
WHERE $x/uear/text() > 2020
RETURN $y
```

This query will project titles and assign them to the `y` variable. We can avoid using some of these statements by doing something like this

```XQuery
FOR $x IN document("bib.xml")/bib/book[year/text > 2020]
RETURN $x
```

### Mongo DB

**Insert / Delete**

```json
db.collection.insert(<document>)
db.collection.update(<condition>, <update>)
```

**Find**

```json
db.collection.find(<condition>, <update>)
db.collection.findOne(<query>, <projection>)
```

**Delete**

```json
db.collection.remove(<query>)
```

**Aggregation**

```json
DB.sales.aggregate({group: {
	_id: month, total: { @sum: price }_
}})
```

### Surfaces
- GeoJSON objects with coordinate axis order - longitude / lagitude
- Point, LineString, Polygon
- MultiPoint, MultiLineString, MultiPolygod

We can use the **Inclusion Query** to find locations contained within a specific polygon. **Intersection** to get locations that intersect a specific geometry. **Proximity** to get the points nearest to another point.

[Back](../Index.md)
