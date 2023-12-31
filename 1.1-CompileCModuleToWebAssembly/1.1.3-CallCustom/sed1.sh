sed -i '' -e '/  \<script type="text\/javascript"\>/i\
  <button id="mybutton">Run myFunction</button>' hello3.html
# sed -i -e '/  <script type="text\/javascript">/ r button.txt' hello3.html
