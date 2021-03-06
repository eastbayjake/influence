'use strict';

angular.module('appApp.directives')
  .directive 'compareBarChart', ['$filter', ($filter)->
    restrict: 'E'
    scope:
      data1: '='
      data2: '='
      label: '='
      lwidth: '@'
      currency: '@'
      onClick: '&'

    link: (scope, element, attrs) ->    
      # on window resize, redraw d3 canvas
      scope.$watch( (()-> angular.element(window)[0].innerWidth), ((newValue, oldValue)-> scope.drawBarChart()) )
      window.onresize = (()-> scope.$apply())

      scope.$watch 'data1', (newVals, oldVals)-> scope.drawBarChart()
      scope.$watch 'data2', (newVals, oldVals)-> scope.drawBarChart()
      
      scope.drawBarChart = () ->
        d3.select(element[0]).selectAll('*').remove()
        if !scope.data1 or !scope.data2
          return
        lwidth = scope.lwidth || 100
        width = $(window).width() - 40
        this_data = [-scope.data1, scope.data2]
        x0 = Math.max(-d3.min(this_data), d3.max(this_data))  
        svg = d3.select(element[0]).append("svg")
          .attr('class', 'bar-holder')
          .style('fill', '#ddd')
          .attr('width', width)
          .attr('height', 30) # arbitrary

        x = d3.scale.linear()
          .domain([-(x0+ (lwidth/2)), (x0+ (lwidth/2))])
          .range([0 , width])
          .nice()

        svg.selectAll("rect")
          .data(this_data)
          .enter().append("rect")
          .attr('class', (d, i) ->
            return 'bar' + (i+1)
          ).attr("x", (d, i) ->
            if i is 0 then x(0) - (lwidth/2)
            else x(0) + (lwidth/2)
          ).attr("y", 0)
          .attr("width", 10)
          .attr("height", 30)
          .transition()
            .duration(1000)
            .attr("width", (d, i) -> 
              if i is 0
                return x(0) - x(d)
              else 
                return x(d) - x(0)
            ).attr("x", (d, i) -> 
              if i is 0 
                return x(d) - (lwidth/2)
              else 
                return x(0) + (lwidth/2)

            )

        svg.selectAll('text')
          .data(this_data)
          .enter()
            .append("text")
            .attr("fill", "Black")
            .attr("y", 20)
            .attr("x", (d, i) ->
              if i is 0 then x(0) - (lwidth/2) - 10
              else x(0) + (lwidth/2) + 10
            ).attr("text-anchor", (d, i) ->
              if i is 0 then "end"
              else "start"
            ).text( (d)-> 
              if scope.currency is "true" then $filter('currency')(Math.abs(d))
              else Math.abs(d)
            )
          
        svg.append("text")
          .attr("fill", "Black")
          .attr("y", 20)
          .attr("x", x(0))
          .attr("text-anchor", "middle")
          .text(scope.label)
  ]
