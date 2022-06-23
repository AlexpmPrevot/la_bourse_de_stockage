import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["button", "content"]


  connect() {

  }

  tabsAnimation(event) {
    const tabs = [...document.getElementsByClassName('tab')]
    const tabContents = [...document.getElementsByClassName('tab-content')]
    const indexToRemove = tabs.findIndex(tab => tab.classList.contains("active-tab"))
    const indexToShow = tabs.indexOf(event.target)

    tabs[indexToRemove].classList.remove("active-tab")
    event.target.classList.add("active-tab")

    tabContents[indexToRemove].classList.remove("active-tab-content")
    tabContents[indexToShow].classList.add("active-tab-content")
  }
}
