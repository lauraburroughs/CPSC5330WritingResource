<h1>WritingResources App</h1> 
<h2>Overview</h2> 
<p>WritingResources is a simple iOS application built with Swift and UIKit that provides a curated list of writing tools and resources. Users can browse a table of resources and tap any item to see details, including a description and intended audience.</p> 
<p>This app was built using concepts from Module 6 and 7 in CPSC 5330.</p> 

<h2>Features</h2> 
<ul> 
  <li>Interactive TableView listing writing resources</li> 
  <li>Tap a resource to view detailed information</li> 
  <li>Clean separation of Model, View, and Controller (MVC)</li> 
  <ul> 
    <li>Responsive layout that works across: 
    <li>iPhone and iPad</li> <li>Portrait and landscape orientations</li> 
    <li>All size classes</li> 
  </ul>
</ul> 
    
<h2>Architecture</h2> 
<p>The app follows the MVC (Model–View–Controller) pattern:</p> 
    
<h3>Model</h3> 
<ul> 
  <li>WritingResource: Represents a writing tool/resource with properties: 
    <ul> 
      <li>name</li> 
      <li>description</li> 
      <li>audience</li> 
    </ul> 
  </li>
</ul> 
    
<h3>View</h3> 
    <ul> 
    <li>UITableView for listing resources</li> 
    <li>UILabels in the detail view for name, description, and audience</li> 
    <li>Auto Layout and stack views for responsive design</li> 
    </ul> 
    
<h3>Controller</h3> 
<ul> 
  <li>ViewController manages: 
    <ul> 
      <li>TableView data source and delegate</li> 
      <li>User taps on table rows</li> 
      <li>Navigation via segue to DetailViewController</li> 
      <li>UI updates for table and detail view</li> 
    </ul> 
  </li> 
  <li>DetailViewController manages: 
    <ul> 
      <li>Displaying the details of the selected resource</li> 
  </ul> 
  </li> 
</ul> 
    
<h2>How It Works</h2> 
<ol> 
  <li>The resources are represented as an array of WritingResource objects.</li> 
  <li>Each WritingResource contains: 
    <ul> 
      <li>Resource name</li> <li>Description</li> <li>Audience</li> </ul></li> <li>When a user taps a table row: 
        <ul> 
          <li>The app identifies the selected resource</li> 
          <li>Performs a segue to the DetailViewController</li> <li>Passes the selected resource to the detail screen</li> 
          <li>Displays name, description, and audience in a responsive layout</li> 
        </ul> 
      </li> 
</ol> 
    
<h2>Requirements Met</h2> <p>This project satisfies all assignment requirements:</p> 
<ul> 
  <li>Uses a class/struct to represent writing resources</li> <li>Provides at least 10 resources in a TableView</li> 
  <li>Navigates to a detail screen on table-cell click</li> 
  <li>Passes data between view controllers</li> 
  <li>Refactored using MVC pattern</li> 
  <li>Runs correctly across all size classes, including iPad and landscape</li> 
</ul>

















  
