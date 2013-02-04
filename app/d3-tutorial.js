
                var dataset = [];
                for (var i = 0; i < 25; i++) {
                    var newNumber = Math.random() * 30;
                    dataset.push(newNumber);
                }

                d3.select(".container").selectAll("div")
                .data(dataset)
                .enter()
                .append("div")
                .attr("class", "bar")
                .style("height", function(d) {
                    var barHeight = d * 5;
                    return barHeight + "px";
                });

            
