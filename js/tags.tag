<example1>
<p> <strong> {opts.doing} </strong> {who}  </p>
this.who = 'I am learning RiotJS';
</example1>


<example2>
<p> <aux-tag doing=" { doingText }" who="Can you believe me ? " /> </p>
this.doingText = "I am in other Tag"
</example2> 
<aux-tag>
<p> <strong> {opts.doing} </strong> {opts.who}!  </p>
</aux-tag>	


<example3>
<h4>sintax: person in people -> person.name</h4>
<ul>
<li each=" { person in people } ">Name: <strong class="">{person.name}</strong> - Age: <strong>{person.age}</strong></li>
</ul>
<h4>sintax: people -> this.name</h4>
<ul>
<li each=" { people } ">Name: <strong>{this.name}</strong> - Age: <strong>{this.age}</strong></li>
</ul>
<h4>sintax: key,value in otherPeople</h4>
<ul>
<li each=" { key, val in otherPeople } ">Name: <strong>{key}</strong> - Age: <strong>{val}</strong></li>
</ul>

this.people = 	[ 
				{name: 'Kevin Rojas', age:24}
				,{name: 'Cindy Rojas', age:15}
				,{name: 'Sergio Rivera', age:22}
				,{name: 'Carlos Mendez', age:27}
				]

this.otherPeople = 	 
				{'Kevin Rojas':24
				,'Cindy Rojas':15
				,'Sergio Rivera':22
				,'Carlos Mendez':27}
				
<style>
li {
	list-style:none;
	letter-spacing: 1px;
}
</style>
</example3>

